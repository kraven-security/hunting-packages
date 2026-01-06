# Iranian APT Groups Deploy New Stealth Backdoors in Widespread Campaign

A sophisticated, multi-wave campaign linked to Iranian state-sponsored actors has been observed targeting over 100 government, diplomatic, and critical infrastructure organizations globally. These attacks utilize newly developed, stealthy backdoors to achieve persistent access for espionage and data exfiltration.

Key takeaways:

🛡️ Massive Scope: The operation is extensive, targeting more than 100 government and diplomatic email accounts across the Middle East, Europe, Africa, and the Americas.

🦠 New Malware: Attackers are deploying new, sophisticated backdoors (such as BugSleep and Whisper) designed to evade detection by remaining dormant or using legitimate services (like webmail) for command and control.

🎯 Targeted Espionage: The primary motive is cyber-espionage, focusing on stealing sensitive data from government, defense, and telecommunication sectors.

🎣 Attack Vector: The main point of entry is spear-phishing, using carefully crafted emails that exploit geopolitical themes to lure victims into enabling malicious macros or clicking links.

🔒 Action Required: Organizations must enhance email security protocols, train employees to spot advanced phishing, and hunt for new, unusual persistence mechanisms within their networks.

🔗 [Source](https://www.group-ib.com/blog/muddywater-espionage/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
