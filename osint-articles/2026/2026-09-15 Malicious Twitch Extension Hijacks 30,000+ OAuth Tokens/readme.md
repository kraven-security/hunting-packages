# Malicious Twitch Extension Hijacks 30,000+ OAuth Tokens

A malicious browser extension called "Twitch Enhanced Viewer | JeetBot" is actively stealing live OAuth session tokens from over 30,000 users, forwarding them directly to a Russian bot service. This severe credential exposure grants attackers full control over victim accounts without requiring passwords or two-factor authentication.

Key takeaways:

**🎯 Target**: Over 30,000 Chrome and Firefox users who installed the "Twitch Enhanced Viewer | JeetBot" extension for stream quality-of-life upgrades like ad blocking and region unlocking.

**💡 Insight**: The extension effectively uses its legitimate features as a smokescreen, silently appending users' account-scoped OAuth bearer tokens to proxy requests in cleartext, while notably exempting a hardcoded list of Russian streamers from the data harvesting.

**☑️ Recommendation 1**: Uninstall the “Twitch Enhanced Viewer | JeetBot” extension and manually disconnect all active sessions in your Twitch account settings to instantly invalidate the exposed tokens.

**☑️ Recommendation 2**: Security teams must block the associated C2 infrastructure (e.g., `enhanced[.]jeetbot[.]cc`) at the network layer and actively audit endpoints for the malicious extension IDs (Chrome: `pnhhdhhcadcjfckjhpmjneldiegbojfb`, Firefox: `twitchenhancedviewer@example.com`).

**☑️ Recommendation 3**: Implement strict enterprise extension whitelisting and operate under the assumption that any extension proxying authenticated web traffic has complete, unchecked access to underlying session credentials.

🔗 [Source](https://socket.dev/blog/malicious-twitch-browser-extension)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-extensions-ids.txt`: List of malicious extension IDs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
