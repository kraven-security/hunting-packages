# Malicious Obfuscated npm Package Deploys Quasar RAT

A malicious npm package, 'ethereumvulncontracthandler', has been found deploying the Quasar RAT on Windows systems. Disguised as an Ethereum tool, it's been downloaded 66 times, with its obfuscated code making detection challenging.

Key takeaways:

📦 Malicious npm Package: The package named 'ethereumvulncontracthandler' was uploaded by user "solidit-dev-416" to npm, appearing as a legitimate Ethereum-related tool.

🕵️‍♂️ Quasar RAT Deployment: Upon installation, it fetches and executes a script from a remote server, deploying the Quasar Remote Access Trojan on the victim's Windows system.

🔍 Obfuscation Techniques: The code is heavily obscured with Base64-, XOR-encoding, and minification to evade analysis and detection by security tools.

🚫 Sandbox Evasion: The malware checks for sandbox environments before executing, aiming to bypass automated analysis and limit exposure in controlled settings.

⚠️ User Alert: With 66 downloads noted, users are advised to check their npm packages for this malicious entry and ensure their system security is up to date.

🔗 https://socket.dev/blog/quasar-rat-disguised-as-an-npm-package

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `mitre-attack-ttps.txt`: List of MITRE ATT&CK techniques observed.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
