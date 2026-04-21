# Inside the High-Velocity RaaS Operation Redefining Ransomware Speed

Check Point Research has released a deep-dive DFIR report on "The Gentlemen," a Ransomware-as-a-Service (RaaS) group that has surged to become the #2 most active threat actor in 2026. By offering an aggressive 90/10 revenue split, they are attracting elite affiliates who execute precision strikes, often moving from initial access to domain-wide encryption within hours.

Key takeaways

🎯 Target: Global corporate environments with a heavy focus on the manufacturing, technology, and healthcare sectors, particularly those utilizing unpatched internet-facing VPNs and firewalls.

💡 Insight: The group utilizes a "Bring Your Own Vulnerable Driver" (BYOVD) technique to systematically neutralize EDR and antivirus tools, combined with the SystemBC proxy malware to create covert tunnels for data exfiltration.

☑️ Recommendation 1: (Short-term) Immediately audit and patch all edge devices—specifically VPN gateways and firewalls—as these remain the group's primary entry point for initial access.

☑️ Recommendation 2: (Long-term) Implement strict Driver Allowlisting (such as Windows Defender Application Control) to prevent the loading of the unauthorized kernel drivers that The Gentlemen use to kill security software.

☑️ Recommendation 3: Establish real-time monitoring for anomalous Active Directory behavior, specifically focusing on sudden Group Policy Object (GPO) modifications or mass service terminations.

🔗 [Source](https://research.checkpoint.com/2026/dfir-report-the-gentlemen/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara-rules.yar`: YARA rule(s) to detect the threat described in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
