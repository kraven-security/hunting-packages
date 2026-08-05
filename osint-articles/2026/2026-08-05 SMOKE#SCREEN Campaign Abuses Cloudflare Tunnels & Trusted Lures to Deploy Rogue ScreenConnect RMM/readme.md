# SMOKE#SCREEN Campaign Abuses Cloudflare Tunnels & Trusted Lures to Deploy Rogue ScreenConnect RMM 

The SMOKE\#SCREEN campaign uses Cloudflare Tunnels and social engineering to deploy unauthorized ScreenConnect agents on Windows and macOS. By abusing trusted platforms like Dropbox, attackers establish persistent command-and-control channels that mimic legitimate IT activity.

Key takeaways

**🎯 Target**: Enterprise networks, corporate workstations, and remote employees running Windows and macOS across various industry sectors.

**💡 Insight**: The threat actors pair rotating lures (e.g., fake Zoom updates and business document reviews) with active defense evasion, disabling AMSI, Windows SmartScreen, and UAC controls, while routing C2 staging infrastructure through ephemeral Cloudflare Tunnels (`cloudflared.exe`) to bypass network filters.

**☑️ Recommendation 1**: Inventory and audit all active RMM software across the enterprise, isolating unauthorized or unmanaged ScreenConnect agent installations and terminating unrecognized Cloudflare Tunnel (`cloudflared.exe`) processes.

**☑️ Recommendation 2**: Implement behavioral detection rules to identify script-based security control tampering, specifically monitoring for attempts to disable Windows SmartScreen, bypass AMSI, or execute unauthorized administrative commands.

**☑️ Recommendation 3**: Enforce strict Application Control policies to restrict unapproved RMM tools and script execution runtimes, ensuring remote access relies on Zero Trust network access controls rather than trusted domain allow-lists. 

🔗 [Source](https://www.securonix.com/blog/smoke-screen-screenconnect-rmm-abuse-cloudflare-tunnels/)

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
