from falconpy import IOC
from pprint import pprint
import validators
from datetime import datetime, timedelta

from config import config


# CrowdStrike authentication vars
CLIENT_ID = config.CS_CLIENT_ID
CLIENT_SECRET = config.CS_CLIENT_SECRET


# functions
def SortIOCs(attributes):
    # add IOCs to bucket
    ipv4_lst = []
    ipv6_lst = []
    domain_lst = []
    url_lst = []
    hostname_lst = []
    sha256_lst = []
    md5_lst = []
    sha1_lst = []
    other_lst = []

    for i in attributes:
        # check if IPv4 or IPv6
        if validators.ipv4(i):
            ipv4_lst.append(i)
        elif validators.ipv6(i):
            ipv6_lst.append(i)
        elif validators.domain(i):
            # check if hostname or domain name

            domain_lst.append(i)
        elif validators.url(i):
            url_lst.append(i)
        elif validators.sha1(i):
            sha1_lst.append(i)
        elif validators.md5(i):
            md5_lst.append(i)
        elif validators.sha256(i):
            sha256_lst.append(i)
        else:
            other_lst.append(i)

    ipv4_length = len(ipv4_lst)
    ipv6_length = len(ipv6_lst)
    domain_length = len(domain_lst)
    url_length = len(url_lst)
    hostname_length = len(hostname_lst)
    sha256_length = len(sha256_lst)
    sha1_length = len(sha1_lst)
    md5_length = len(md5_lst)

    # print totals
    print(
        f"[+] Total Indicators: {ipv4_length + ipv6_length + domain_length + url_length + hostname_length + sha256_length + sha1_length + md5_length}"
    )
    print(f"+++ Network Indicators +++ ")
    print(f"- IPv4 addresses: {ipv4_length}")
    print(f"- IPv6 addresses: {ipv6_length}")
    print(f"- Domains: {domain_length}")
    print(f"- URLs: {url_length}")
    print(f"- Hostnames: {hostname_length}")
    print(f"+++ Endpoint Indicators +++")
    print(f"- SHA256 hashes: {sha256_length}")
    print(f"- SHA1 hashes: {sha1_length}")
    print(f"- MD5 hashes: {md5_length}")
    print(f'[+] Total "other" IOCs: {len(other_lst)}')
    print(
        f"[+] Total indicators to upload to CrowdStrike: {ipv4_length + ipv6_length + sha256_length + md5_length + domain_length}"
    )

    # return indicators list (tuple of type and value)
    cs_indicators = {
        "ipv4": ipv4_lst,
        "ipv6": ipv6_lst,
        "domain": domain_lst,
        "sha256": sha256_lst,
        "md5": md5_lst,
    }
    return cs_indicators


def UploadIOCs(iocs_to_upload):
    # authenticate to CrowdStrike Falcon
    falcon = IOC(client_id=CLIENT_ID, client_secret=CLIENT_SECRET)

    # get count of iocs to upload
    print()
    count = 0
    for i in iocs_to_upload:
        count += len(iocs_to_upload[i])
    print(f"[+] Uploading {count} indicators.")

    # upload indicators
    ioc_platforms = ["Mac", "Windows", "Linux"]
    # UTC formatted date string (current date + 90 days)
    now = datetime.now() + timedelta(days=60)
    # ioc_expiry_date = now.replace(tzinfo=timezone.utc).isoformat()
    ioc_expiry_date = now.isoformat() + "Z"
    uploaded_iocs = []
    failed_iocs = []

    for ioc_type in iocs_to_upload:
        for ioc in iocs_to_upload[ioc_type]:
            response = falcon.indicator_create(
                action="detect",
                value=ioc,
                type=ioc_type,
                severity="medium",
                platforms=ioc_platforms,
                applied_globally=True,
                retrodetects=True,
                description="IOC from CTI",
                expiration=ioc_expiry_date,
            )

            if response["status_code"] == 201:
                # print("[Success] - IOC ID: " + response['body']['resources'][0]['id'])
                uploaded_iocs.append(ioc)
            elif response["status_code"] == 400:
                try:
                    print("[FAIL] - " + response["body"]["resources"][0]["message"])
                    failed_iocs.append(ioc)
                except:
                    print(response)

    pprint(
        f"[+] upladed {len(uploaded_iocs)} new IOCs to CrowdStrike Falcon IOC Management"
    )
    pprint(
        f"[+] failed to upladed {len(failed_iocs)} to CrowdStrike Falcon IOC Management (duplicates)"
    )

    # check new CrowdStrike indiator count
    response2 = falcon.indicator_combined()
    total_iocs = response2["body"]["meta"]["pagination"]["total"]
    pprint(f"[+] There are now {total_iocs} CrowdStrike indicators.")


def read_ioc_file(ioc_file):
    # read iocs in file and return a list
    ioc_list = []
    with open(ioc_file) as f:
        lines = f.readlines()
        for line in lines:
            ioc_list.append(line.strip())

    return ioc_list


if __name__ == "__main__":
    print("--- script start ---")
    # connect and authenticate to CrowdStrike
    faclon = IOC(client_id=CLIENT_ID, client_secret=CLIENT_SECRET)

    iocs = read_ioc_file("iocs-to-upload.txt")
    indicators = SortIOCs(iocs)

    pprint(indicators)

    UploadIOCs(indicators)

    pprint("--- script complete ---")
