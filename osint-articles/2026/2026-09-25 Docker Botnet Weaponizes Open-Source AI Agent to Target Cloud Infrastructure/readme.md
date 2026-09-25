# Docker Botnet Weaponizes Open-Source AI Agent to Target Cloud Infrastructure 

ThreatDown researchers uncovered CARBONATO, a novel Docker botnet that exploits exposed, unauthenticated Docker daemons on port 2375 to deploy a modified open-source AI agent. Controlled via Telegram, the implant repurposes the Hermes Agent framework to maintain persistence, harvest credentials, and autonomously spread across adjacent networks.

Key takeaways

🎯 **Target**: Cloud hosts and enterprise infrastructure exposing unauthenticated Docker daemon APIs on port 2375\.

💡 **Insight**: Rather than writing custom post-exploitation tools, the attackers integrated the open-source Hermes Agent and modified its `SOUL.md` persona file to prioritize harvesting AI API keys across 14 providers before stealing standard system credentials.

☑️ **Recommendation 1**: Perform an immediate perimeter audit to secure or disable publicly exposed Docker daemons on port 2375, enforcing TLS authentication and restricting access via strict network access control lists (ACLs).

☑️ **Recommendation 2**: Implement continuous host and container monitoring to detect unauthorized privileged containers, altered persistence scripts, and abnormal egress traffic directed toward Telegram channels or AI service APIs. 

🔗 [Source](https://www.threatdown.com/blog/carbonato/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
