# North Korean Android Spyware 'KoSpy' Sneaks Onto Google Play in Covert Campaign

North Korean hackers from APT37 slipped the 'KoSpy' spyware into Google Play, targeting users with fake utility apps to steal SMS, calls, and more. Lookout researchers warn this active campaign since 2022 is a stark reminder to double-check app sources.

Key takeaways:

🕵️‍♂️ Covert Operation: Lookout researchers uncovered 'KoSpy,' a new Android spyware linked to North Korea’s APT37 (ScarCruft). Since March 2022, it has infiltrated Google Play and APKPure, targeting Korean and English-speaking users.

📱 Fake Apps: Disguised as file managers, security tools, and updaters (e.g., "Phone Manager," "Kakao Security"), these apps steal SMS, call logs, locations, audio, and screenshots while offering some real functionality to avoid suspicion.

🔗 Infrastructure Ties: The campaign’s command-and-control servers overlap with past North Korean ops, including APT43 and Konni malware, showing a sophisticated, state-backed effort.

🛡️ Protect Yourself: The apps are now removed from stores, but users must manually uninstall them, scan devices, and avoid third-party downloads to dodge this espionage threat.

🔗 https://buff.ly/Y5xJC8j

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `firebase-projects.txt`: List of malicious firebase projects assocaited with threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
