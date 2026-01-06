# New "ClayRAT" Android Spyware Spreads Like Wildfire

sophisticated and rapidly evolving Android spyware campaign, "ClayRAT," is targeting users in Russia through fake lookalike versions of popular apps. The malware, which is designed to steal sensitive data and self-propagate, poses a significant threat to user privacy and security.

Key takeaways:

🔒 Deceptive Distribution: ClayRAT is being spread through fake websites and Telegram channels impersonating popular apps like WhatsApp, TikTok, and YouTube.

🛡️ Total Data Theft: The spyware can steal SMS messages, call logs, notifications, and device details. It can also take pictures, place calls, and send texts without the user's knowledge.

💡 Self-Propagating Worm: ClayRAT is designed to spread by sending malicious links to all contacts on an infected device.

🌐 Evasive Maneuvers: The malware uses advanced obfuscation and fake Play Store update screens to bypass Android's security protections and remain undetected.

🔗 [Source](https://zimperium.com/blog/clayrat-a-new-android-spyware-targeting-russia)

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
