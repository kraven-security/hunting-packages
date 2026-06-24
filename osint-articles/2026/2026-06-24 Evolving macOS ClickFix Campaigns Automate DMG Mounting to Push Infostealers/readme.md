# Evolving macOS "ClickFix" Campaigns Automate DMG Mounting to Push Infostealers 

A new "ClickFix" variant targets macOS by moving from manual terminal commands to automated disk image (.dmg) mounting. This shift allows the campaign to bypass platform protections and silently install information stealers via deceptive browser prompts.

Key takeaways

**🎯 Target**: Apple macOS users, corporate employees operating Mac environments, and individuals seeking software optimization tools, plugins, or third-party web components from unverified online channels.

**💡 Insight**: This evolved ClickFix campaign bypasses macOS warning prompts by automating payload delivery. Instead of relying on manual Terminal commands, it uses browser workflows to silently mount malicious disk images and execute background scripts, harvesting keychain data, cookies, and cryptocurrency.

**☑️ Recommendation 1** Update and configure endpoint detection and response (EDR) agents to strictly monitor and alert on automated disk mounting processes (`hdiutil`) initiated directly by web browser child processes.

**☑️ Recommendation 2**: Educate corporate staff and technical teams on this evolving delivery model, reinforcing that legitimate technical assistance platforms or browser verifications will never require a user to interact with sudden overlay fixes or authorize unknown disk mounts.

**☑️ Recommendation 3**: Leverage Mobile Device Management (MDM) configuration profiles to enforce strict Gatekeeper compliance, block execution of unsigned scripts inside the `/tmp` folder, and limit non-administrative privileges regarding native tool configurations. 

🔗 [Source](https://github.com/PaloAltoNetworks/Unit42-timely-threat-intel/blob/main/2026-06-20-ClickFix-campaign-delivers-macOS-infostealer-via-DMG.txt?utm_campaign=tti_clickfix-macos-stealer)

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
