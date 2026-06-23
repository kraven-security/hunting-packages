# AryStinger Botnet Hijacks Legacy Routers for Global Attack Proxies 

Security researchers have discovered a new botnet dubbed "AryStinger" that has compromised over 4,000 legacy network devices, creating a distributed reconnaissance and attack cluster. By exploiting decade-old vulnerabilities, threat actors are transforming these outdated systems into stealthy springboards for complex network intrusions.

Key takeaways

**🎯 Target**: The primary victims are older D-Link and Linksys routers utilizing RTL819X series chips, as well as various Network Attached Storage (NAS) devices.

**💡 Insight**: Unlike common IoT botnets used for DDoS attacks or cryptomining, AryStinger is intentionally designed to build an infrastructure cluster for intrusion reconnaissance, with advanced capabilities for port scanning, subdomain enumeration, and internal network penetration.

**☑️ Recommendation 1**: Conduct a rapid audit of your external-facing infrastructure to identify and patch devices vulnerable to CVE-2013-3307, CVE-2016-5681, and CVE-2025-11837.

**☑️ Recommendation 2**: Update your threat hunting parameters to monitor for unauthorized SSH connections or the sudden appearance of the "dropbear" service running on unexpected ports, such as port 2332\.

**☑️ Recommendation 3**: Systematically replace end-of-life hardware that is more than ten years old, effectively eliminating the unpatchable attack surface targeted by this campaign. 

🔗 [Source](https://blog.xlab.qianxin.com/arystinger-botnet-hijacks-legacy-routers-for-global-attacks-en/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
