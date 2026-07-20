# ACR Stealer Leverages ClickFix Tactics & Blockchain C2 Infrastructure 

Threat actors are ramping up ACR Stealer deployments, using sophisticated intrusion chains that pair WebDAV-hosted ClickFix social-engineering lures with Python loaders. To ensure maximum operational resilience against takedowns, the campaign heavily relies on decentralized blockchain infrastructure for command-and-control (C2) operations.

Key takeaways

**🎯 Target**: Enterprise users and organizations susceptible to social engineering, specifically employees lured into executing malicious commands via WebDAV-based ClickFix prompts.

**💡 Insight**: This campaign stands out by combining WebDAV execution vectors and Python loaders with decentralized blockchain-based C2 communication, making the infrastructure immune to traditional server takedowns.

**☑️ Recommendation 1**: Educate employees on ClickFix social engineering lures (such as fake browser error prompts instructing users to copy and paste code) and restrict WebDAV protocol usage across enterprise endpoints.

**☑️ Recommendation 2**: Implement strict Endpoint Detection and Response (EDR) rules to detect and block abnormal Python process spawns originating from web browsers or script hosts.

**☑️ Recommendation 3**: Integrate threat intelligence tracking non-standard DNS queries and blockchain domain resolvers into long-term threat hunting and SIEM monitoring workflows.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/07/16/acr-stealer-two-observed-intrusion-chains-amid-increased-threat-activity/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `advanced-hunting-queries.txt`: List of Microsoft Defender XDR advanced hunting queries. 

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
