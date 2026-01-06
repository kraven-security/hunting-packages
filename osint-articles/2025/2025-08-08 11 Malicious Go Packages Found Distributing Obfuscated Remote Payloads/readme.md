# 11 Malicious Go Packages Found Distributing Obfuscated Remote Payloads

Socket's Threat Research Team has uncovered 11 malicious Go packages, many of which are still active, that use obfuscated loaders to execute remote payloads on both Linux and Windows systems. This discovery highlights the ongoing threat of supply chain attacks within the Go ecosystem.

Key takeaways:

🕵️ Typosquatting & Deception: At least eight of the malicious packages are typosquats, cleverly mimicking legitimate packages to trick unsuspecting developers into integrating them into their projects.

🔒 Obfuscation is Key: All the malicious packages use an identical and sophisticated string obfuscation method to hide their malicious code, making them harder to detect through static analysis.

🦠 Multi-Platform Payload: The attack is designed to work on both Linux and Windows. It downloads a second-stage payload from command-and-control (C2) servers and executes it in memory, after a one-hour sleep timer intended to evade sandbox analysis.

🛡️ Decentralization Dangers: The decentralized nature of Go's ecosystem, while offering flexibility, also makes it a fertile ground for attackers to create confusion and distribute malicious packages.

🔗 [Source](https://socket.dev/blog/11-malicious-go-packages-distribute-obfuscated-remote-payloads)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `mitre-ttps.txt`: MITRE ATT&CK tactics, techniques, and procedures in the article.
- `malicious-packages.txt`: List of malicious NPM packages.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
