# North Korean Hackers Poison npm Ecosystem with 26 Malicious Packages

North Korean threat actors have been caught publishing 26 malicious packages to the npm registry, designed to exfiltrate sensitive data and establish backdoors in developer environments. This sophisticated campaign targets the software supply chain by masquerading as legitimate utility tools to compromise downstream applications.

Key takeaways:

🕵️‍♂️ Strategic Supply Chain Attack: Attackers published packages with names mimicking popular libraries to trick developers into integrating malicious code directly into their build pipelines.

🦠 Data Exfiltration & Backdoors: Once installed, these packages execute scripts that harvest environment variables, credentials, and system metadata, while frequently deploying a second-stage payload for persistent remote access.

🛠️ Advanced Evasion Tactics: The malware utilized time-based execution delays and legitimate cloud services for command-and-control (C2) communication to bypass standard security scanners.

🔒 Immediate Mitigation: Developers should audit their package-lock.json files, use automated software composition analysis (SCA) tools, and strictly verify package maintainers before installation.

🔗 [Source](https://socket.dev/blog/stegabin-26-malicious-npm-packages-use-pastebin-steganography)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-packages.txt`: List of malicious npm packages.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
