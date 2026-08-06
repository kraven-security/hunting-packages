# macOS ClickFix Campaign Uses Cloaking Gates to Hide Infostealer Lures 

Microsoft Threat Intelligence identified macOS ClickFix campaigns using server-side fingerprinting gates to bypass security scanners. This allows attackers to profile visitor environments before delivering infostealers, such as MacSync and Atomic Stealer, exclusively to genuine Mac targets.

Key takeaways

**🎯 Target**: macOS users, developer environments, and enterprise Mac fleets navigating mass-produced look-alike domains.

**💡 Insight**: The campaign shifted from openly embedding malicious commands in HTML to using a \~2.5 KB JavaScript profiling gate that inspects WebGL GPU rendering and DOM tripwires, serving blank decoy pages to security scanners while presenting social engineering lures to real macOS targets.

**☑️ Recommendation 1**: Configure endpoint detection tools (EDR/SIEM) to immediately alert when macOS terminal emulators (`Terminal`, `iTerm2`) spawn network tools (`curl`, `wget`) piped directly into shell interpreters (`zsh`, `bash`) or base64 decoders.

**☑️ Recommendation 2**: Conduct targeted user awareness training reinforcing that legitimate websites, CAPTCHAs, or system updates will never instruct users to copy and paste shell commands into the macOS Terminal.

**☑️ Recommendation 3**: Enforce strict behavioral access controls around macOS credential stores, browser session cookies, and system keychains to prevent post-exploitation exfiltration. 

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/08/05/macos-clickfix-campaign-learned-hide/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `microsoft-hunting-queries.kql`: List of Microsoft threat hunting queries in KQL for Defender Endpiont and Sentinel SIEM in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
