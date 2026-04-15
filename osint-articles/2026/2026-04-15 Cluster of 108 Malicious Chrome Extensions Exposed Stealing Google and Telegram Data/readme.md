# Cluster of 108 Malicious Chrome Extensions Exposed Stealing Google and Telegram Data

A massive campaign involving 108 malicious Chrome extensions has been unmasked, harvesting sensitive user identities and hijacking sessions of over 20,000 users. These extensions masquerade as legitimate tools and games while silently exfiltrating credentials to a single shared backend infrastructure.

Key takeaways

🎯 Target: Individual users of Google and Telegram, particularly those using "gaming" utilities, YouTube/TikTok enhancers, and translation tools.

💡 Insight: The campaign utilizes a sophisticated "multi-publisher" strategy, operating under five distinct identities to bypass store reputation checks, and leverages Chrome’s declarativeNetRequest API to strip security headers from platforms like YouTube and TikTok, enabling ad injection and session theft every 15 seconds.

☑️ Recommendation 1: (Short-term) Audit your browser extensions immediately; remove any published by Yana Project, GameGen, SideGames, Rodeo Games, or InterAlt, and terminate all active Telegram Web sessions from your mobile app to invalidate stolen tokens.

☑️ Recommendation 2: (Long-term) Transition from a "How to" to a "How I" security mindset by documenting and auditing your digital footprint regularly, and enforcing the use of hardware-based 2FA (like YubiKeys), which are resistant to session-theft and OAuth2 abuse seen in this campaign.

🔗 [Source](https://socket.dev/blog/108-chrome-ext-linked-to-data-exfil-session-theft-shared-c2)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-chrome-extensions.txt`: List of malicious Chrome extensions with IDs in the article.
- `threat-actor-aliases.txt`: List of emails addresses associated with the threat actor invovled.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
