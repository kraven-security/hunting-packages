#  GitHub and SourceForge Abused to Deliver Stealthy Deno RAT 

Threat actors are using compromised YouTube channels, GitHub, and SourceForge to distribute "DinDoor," a novel Deno-based Remote Access Trojan (RAT) disguised as tools like ChatGPT. The malware chain abuses package managers to install the Deno runtime before deploying the RAT. 

Key takeaways

**🎯 Target**: Content creators, AI enthusiasts, gamers, and technical professionals downloading software utilities, plugins, or community tools from shared repositories.

**💡 Insight**: Adversaries are increasingly adopting alternative JavaScript environments like Deno to evade signature-based detection, even injecting WebRTC code into a hidden Microsoft Edge process via the Chrome DevTools Protocol (CDP) to stream the victim's screen peer-to-peer, completely bypassing standard C2 network monitoring.

**☑️ Recommendation 1**: Mandate that software downloads occur only through official, verified vendor websites. Train users never to copy and execute terminal commands (e.g., `curl | msiexec`) or scripts directly from untrusted open-source repositories, and restrict the unauthorized execution of standalone package managers like Scoop.

**☑️ Recommendation 2**: Tune Endpoint Detection and Response (EDR) tools to alert on unexpected deployments of developer-focused runtimes (e.g., Deno, Bun) by regular user profiles. Additionally, monitor for hidden system processes interacting with Microsoft Edge via browser debugging protocols (CDP) to interrupt unauthorized peer-to-peer data channels.

🔗 [Source](https://www.malwarebytes.com/blog/threat-intel/2026/05/fake-software-on-github-and-sourceforge-distribute-deno-rat)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
