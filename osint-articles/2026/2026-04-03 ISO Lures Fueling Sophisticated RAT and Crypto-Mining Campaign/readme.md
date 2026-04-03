# ISO Lures Fueling Sophisticated RAT and Crypto-Mining Campaign

Cybersecurity researchers have uncovered an active operation in which attackers are using malicious ISO image files to distribute a potent combination of Remote Access Trojans (RATs) and cryptocurrency miners. This campaign highlights a growing trend of using disk image formats to bypass standard email security filters and gain unauthorized access to high-value systems.

Key takeaways:

🚨 High-Risk Lures: Attackers are shifting toward ISO files because they often evade traditional security scanners that focus on executable files, making them a highly effective delivery mechanism for initial infections.

🛡️ Dual-Threat Impact: The malicious payload provides threat actors with total remote control for data exfiltration while simultaneously hijacking hardware resources to mine cryptocurrency, leading to severe performance degradation and increased costs.

🔒 Evasion & Persistence: The campaign leverages "living-off-the-land" techniques, using legitimate system utilities to execute malicious code, helping the malware evade basic antivirus solutions.

💡 Actionable Defense: To mitigate this risk, IT administrators should consider disabling the auto-mount feature for ISO and VHD files and implement strict policies against mounting disk images from unverified or external sources.

🔗 [Source](https://www.elastic.co/security-labs/fake-installers-to-monero)

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
