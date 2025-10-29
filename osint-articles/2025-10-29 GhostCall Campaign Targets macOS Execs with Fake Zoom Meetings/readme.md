# GhostCall Campaign Targets macOS Execs with Fake Zoom Meetings

The BlueNoroff hacking group (part of Lazarus) is targeting tech and VC executives on macOS with a sophisticated new campaign. Attackers use social engineering on platforms like Telegram to lure victims into malicious, "Zoom-like" phishing sites for fake investment meetings.

Key takeaways:

👻 Advanced Social Engineering: Targets are invited to a fake Zoom call that appears legitimate, even playing recordings of other victims to build trust before claiming there's an audio issue.

🚨 Fake Update Trojan: The site prompts the victim to download a "Zoom client update" to fix the "problem." This file is a malicious script that downloads and installs a backdoor.

🔒 Info-Stealing Payload: The malware, including a backdoor dubbed 'CosmicDoor,' is designed to harvest sensitive files from the compromised Mac, specifically targeting password managers (like 1Password, LastPass), note-taking apps, and Telegram data.

🛡️ High-Value Targets: This campaign is not random; it is a highly-targeted operation focused on C-suite executives and venture capitalists, demonstrating a clear financial motive.

🔗 [Source](https://securelist.com/bluenoroff-apt-campaigns-ghostcall-and-ghosthire/117842/)

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
