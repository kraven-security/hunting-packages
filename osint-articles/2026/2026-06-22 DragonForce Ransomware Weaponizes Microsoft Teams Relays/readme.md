# DragonForce Ransomware Weaponizes Microsoft Teams Relays 

The DragonForce ransomware cartel has deployed a highly sophisticated Go-based malware, "Backdoor.Turn," to mask command-and-control traffic through legitimate Microsoft Teams relay servers. This marks the first known in-the-wild abuse of Microsoft's TURN infrastructure, allowing attackers to disguise malicious QUIC sessions as standard network traffic and remain undetected for months.

Key takeaways

**🎯 Target**: Major U.S. services firms and enterprise networks relying on Microsoft Teams infrastructure, particularly those susceptible to initial access via vulnerable SQL or MSSQL servers.

**💡 Insight**: The attackers achieved unprecedented stealth by requesting an anonymous Teams visitor token from Skype identity services, then utilizing a legitimate Microsoft TURN relay to disguise their connection to a malicious C\&C server. Furthermore, the group employed a novel "Bring Your Own Vulnerable Driver" (BYOVD) technique to bypass endpoint security by exploiting a previously undocumented Huawei audio driver vulnerability.

**☑️ Recommendation 1**: In the short term, actively hunt for network anomalies involving outbound Microsoft Teams/Skype relay traffic or unusual QUIC sessions, and scan your environment against the published Indicators of Compromise (IoCs) for the Backdoor.Turn payload.

**☑️ Recommendation 2**: Strengthen endpoint defenses immediately by updating your organization's driver blocklist to include known vulnerable drivers, specifically Huawei's HWAuidoOs2Ec.sys and Topaz Antifraud's wsftprm.sys, to thwart BYOVD evasion tactics.

**☑️ Recommendation 3**: As a long-term strategy, enforce strict application control and Zero Trust network principles to prevent attackers from side-loading malicious DLLs into trusted processes like VirtualBox, restricting their ability to gain kernel-level access. 

🔗 [Source](https://www.security.com/threat-intelligence/dragonforce-msteams-backdoor)

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
