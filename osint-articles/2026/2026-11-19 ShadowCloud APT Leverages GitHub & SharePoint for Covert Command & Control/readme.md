# ShadowCloud APT Leverages GitHub & SharePoint for Covert Command & Control

Operation ShadowCloud, a China-linked cyber campaign, abuses Microsoft SharePoint and GitHub to route command-and-control traffic through trusted cloud APIs via the GitDoor and GraphDoor backdoors, bypassing perimeter defenses to deploy espionage plugins on demand.

Key takeaways:

**🎯 Target:** Government sectors and critical infrastructure organizations, particularly in Asia and Africa, that rely heavily on widely trusted platforms like Microsoft 365 and GitHub.

**💡 Insight:** Because these backdoors "live off the land" by routing traffic through trusted, highly-allowlisted cloud APIs (rather than standing up dedicated C2 infrastructure), perimeter and signature-based network controls are virtually blind to the intrusion.

**☑️ Recommendation 1:** Immediately enhance endpoint and identity monitoring to detect anomalous usage of cloud APIs, focusing on unusual repository access patterns, non-standard user agents, or unexpected processes initiating connections to GitHub or SharePoint.

**☑️ Recommendation 2:** Review and tighten egress filtering policies to restrict which internal workloads are permitted to establish outbound connections to external endpoints, even legitimate ones.

**☑️ Recommendation 3:** Implement comprehensive Zero Trust architecture and micro-segmentation to strictly limit lateral movement and contain credential harvesting, should an initial foothold occur via trusted application sideloading.

🔗 [Source](https://securelist.com/operation-shadowcloud-gitdoor/122004/)

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
