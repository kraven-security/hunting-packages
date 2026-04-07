# DPRK Hackers Weaponize GitHub for Stealth C2 Operations

North Korean state-sponsored actors are increasingly abusing GitHub as a Command-and-Control (C2) infrastructure to camouflage malicious traffic within legitimate developer workflows. This tactical shift allows attackers to bypass traditional network monitoring that often marks GitHub traffic as inherently safe, making it a highly effective "living off the land" infrastructure tactic.

Key takeaways

🚨 Hiding in Plain Sight: By using GitHub repositories to host payloads and receive commands, hackers blend into high-traffic, trusted environments, rendering legacy firewall whitelists ineffective.

🌐 Targeting the Tech Community: These campaigns frequently utilize social engineering, such as fake job offers or collaborative coding assignments, to trick developers into executing malicious scripts.

🛡️ Behavioral Detection is Vital: Organizations must move beyond simple domain trust and implement behavioral analysis to detect anomalous patterns, such as unusual data exfiltration or automated updates from unknown repositories.

💡 Zero Trust for Development: Enforce strict vetting of all third-party dependencies and maintain high vigilance during recruiter outreach or developer-to-developer interactions on public platforms.

🔗 [Source](https://www.fortinet.com/blog/threat-research/dprk-related-campaigns-with-lnk-and-github-c2)

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
