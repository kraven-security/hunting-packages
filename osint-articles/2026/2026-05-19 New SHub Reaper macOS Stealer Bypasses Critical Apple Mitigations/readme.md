# New SHub Reaper macOS Stealer Bypasses Critical Apple Mitigations

Researchers discovered "Reaper," a SHub Stealer variant that spoofs Apple, Microsoft, and Google branding. It uses the `applescript://` URL scheme to bypass anti-ClickFix protections, harvesting credentials and sensitive data.

Key takeaways

**🎯 Target**: macOS personal and corporate users, specifically targeting collaboration app users (e.g., Miro and WeChat), cryptocurrency investors using local desktop or extension wallets, and developers holding local configuration files.

**💡 Insight**: Reaper uses sophisticated multi-stage camouflage, hosting payloads on typo-squatted domains and masquerading as legitimate updates, while evading standard defenses by executing browser-driven AppleScript.

**☑️ Recommendation 1:** Audit corporate Mac endpoints for unexpected LaunchAgents (e.g., in `~/Library/LaunchAgents`) masquerading under fraudulent Google or Apple update names, and inspect logs for anomalous browser-spawned `osascript` or Script Editor invocations.

**☑️ Recommendation 2:** Deliver immediate security awareness training to macOS users, emphasizing that legitimate application updates or security patches will never redirect through the browser to open local Script Editor prompts requesting local account credentials.

**☑️ Recommendation 3:** Configure Endpoint Detection and Response (EDR) or Mobile Device Management (MDM) behavioral restrictions to actively monitor or disable protocol handlers like `applescript://` originating from unauthorized browser links to mitigate fileless social engineering execution paths.

🔗 [Source](https://www.sentinelone.com/blog/shub-reaper-macos-stealer-spoofs-apple-google-and-microsoft-in-a-single-attack-chain/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
