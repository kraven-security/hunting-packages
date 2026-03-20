# Is Your Notes App a Goldmine for Hackers?

A sophisticated new Android malware named "Perseus" has been discovered targeting personal note-taking apps to steal highly sensitive data, including passwords and cryptocurrency recovery phrases. Disguised as unofficial IPTV streaming services, this malware grants attackers full remote control over infected devices while systematically scanning for your "digital secrets."

Key takeaways

🔒 Targets Personal Notes: In a first for Android threats, Perseus specifically scans apps like Google Keep, Samsung Notes, and Microsoft OneNote to harvest manually saved credentials and financial data.

📺 The IPTV Lure: The malware spreads through unofficial APKs (like "Roja Directa TV") found on third-party stores, exploiting users looking for free sports broadcasts to bypass standard security checks.

🕵️ Complete Device Takeover: By abusing Accessibility Services, Perseus can capture screenshots, simulate user taps, and even deploy "black screen" overlays to hide malicious activity from the victim.

🛡️ Advanced Evasion: The malware calculates a "suspicion score" based on your device's hardware and battery data to detect if it's being analyzed by security researchers before it begins its attack.

🔗 [Source](https://www.threatfabric.com/blogs/perseus-dto-malware-that-takes-notes)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `malicious-packages`: List of malicious packages in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
