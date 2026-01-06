# New Ransomware Threat: GLOBAL GROUP RaaS Expands Operations

A new ransomware-as-a-service (RaaS) threat, known as GLOBAL GROUP, has emerged from the ashes of the BlackLock and Eldorado operations. This rebranded group is actively targeting organizations across various sectors in the US, Europe, Australia, and Brazil, leveraging known vulnerabilities and advanced tactics to deploy its attacks.

Key takeaways:

🚨 Vulnerable Entry Points: GLOBAL GROUP is exploiting known vulnerabilities in edge appliances from Cisco, Fortinet, and Palo Alto Networks to gain initial access to corporate networks.

🔒 Brute-Force Attacks: The group is also using brute-force attacks targeting Microsoft Outlook and RDWeb portals, making strong password policies and multi-factor authentication more critical than ever.

💡 AI-Powered Negotiations: In a novel move, GLOBAL GROUP is using AI-driven chatbots in its negotiation portal to communicate with victims, streamlining the extortion process for their affiliates.

🛡️ Proactive Defense is Key: Organizations must prioritize patching vulnerable systems, enhancing access controls, and actively monitoring for signs of lateral movement and data exfiltration to defend against this evolving threat.

🌐 Stay Vigilant: The rapid emergence of new RaaS groups like GLOBAL GROUP highlights the dynamic and persistent nature of the ransomware threat. Continuous threat intelligence and a proactive security posture are essential for staying protected.

🔗 [Source](https://blog.eclecticiq.com/global-group-emerging-ransomware-as-a-service)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `rule.yara`: YARA detection rule in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
