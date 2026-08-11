# FBI & South Korea Issue Urgent Warning on Gunra Ransomware Targeting Critical Infrastructure

The FBI, CISA, and South Korea warned that the Gunra ransomware gang is breaching global critical infrastructure by exploiting unpatched Fortinet firewalls. This RaaS group, linked to North Korea’s Lazarus Group, demands $10M+ ransoms and directly harasses victim management.

Key takeaways:

**🎯 Target**: Healthcare, financial services, government entities, and industrial critical infrastructure globally.

**💡 Insight**: Gunra gains initial access by exploiting known Fortinet firewall vulnerabilities (CVE-2024-55591 and CVE-2025-24472), but defenders hold a significant advantage: a flaw in Gunra’s Linux variant allows incident responders to reconstruct encryption keys using file timestamps and recover data without paying the ransom.

**☑️ Recommendation 1**: Audit and immediately patch all internet-facing Fortinet firewall appliances against CVE-2024-55591 and CVE-2025-24472 to close Gunra’s primary entry vector.

**☑️ Recommendation 2**: If impacted by Gunra's Linux locker, refrain from paying extortion fees; work with CISA or specialized IR teams to reconstruct decryption keys via file timestamps.

**☑️ Recommendation 3**: Brief executive leadership on out-of-band email extortion tactics, and implement strict network segmentation to block initial access brokers from escalating access into critical operations. 

🔗 [Source](https://www.cisa.gov/news-events/cybersecurity-advisories/aa26-222a)

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
