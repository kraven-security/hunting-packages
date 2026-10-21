# SafePay Ransomware Escalates Attacks on Critical Infrastructure 

CISA and the FBI warn of active campaigns by the SafePay ransomware syndicate, which has aggressively struck businesses and critical infrastructure sectors globally since mid-2024. They exploit vulnerable edge devices and weaponize legitimate remote management tools to compromise networks, exfiltrate sensitive files, and deploy file-encrypting malware.

Key takeaways:

**🎯 Target:** Critical infrastructure operators and enterprise businesses across North America, South America, Europe, and Australia, particularly environments with internet-exposed edge appliances and unpatched firewalls.

**💡 Insight:** SafePay relies heavily on "living-off-the-land" and legitimate remote administration software, weaponizing tools like ScreenConnect, AnyDesk, TeamViewer, and RClone to evade conventional signature-based endpoint defenses.

**☑️ Recommendation 1:**Immediately audit, patch, and harden all internet-facing firewalls, VPNs, and network edge appliances against known vulnerabilities.

**☑️ Recommendation 2:**Restrict or block unauthorized remote access and management software across your fleet, and monitor process executions for anomalous tool use (such as `dcsync.exe`, `netscan.exe`, or suspicious invocations of `svchost.exe`).

**☑️ Recommendation 3:**Implement a Zero Trust architecture backed by phishing-resistant Multi-Factor Authentication (MFA), strict identity and credential access management (ICAM), and immutable, isolated offline backups to ensure rapid operational recovery.

🔗 [Source](https://www.cisa.gov/news-events/cybersecurity-advisories/aa26-293a)

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
