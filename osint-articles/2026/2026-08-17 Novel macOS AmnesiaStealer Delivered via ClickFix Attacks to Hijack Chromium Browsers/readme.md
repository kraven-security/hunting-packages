# Novel macOS "AmnesiaStealer" Delivered via ClickFix Attacks to Hijack Chromium Browsers

Jamf Threat Labs discovered AmnesiaStealer, a multi-stage macOS infostealer distributed through ClickFix lures disguised as fake GitHub download pages. The malware steals credentials, keychains, and sensitive data, while enabling threat actors to secretly hijack and remotely control Chromium browser sessions.

Key takeaways:

**🎯 Target**: macOS users and software developers lured into pasting Terminal execution scripts from counterfeit GitHub software download portals.

**💡 Insight**: AmnesiaStealer features an advanced remote-control streaming module that clones browser profiles and uses DevTools protocols to grant operators live screencast control and plaintext cookie theft without triggering browser automation flags.

**☑️ Recommendation 1**: Educate users and developers never to copy and paste terminal scripts or execution strings directly from web pages or unverified pop-ups into macOS Terminal.

**☑️ Recommendation 2**: Implement endpoint security and behavior monitoring to detect and block suspicious process executions, such as Terminal spawning background shell scripts that fetch and execute unsigned Mach-O binaries.

**☑️ Recommendation 3**: Enforce strict Transparency, Consent, and Control (TCC) governance and audit Full Disk Access permissions across corporate endpoints to prevent unauthorized applications from querying login keychains or sensitive browser directories.

🔗 [Source](https://www.jamf.com/blog/amnesia-stealer-macos-infostealer-clickfix/)

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
