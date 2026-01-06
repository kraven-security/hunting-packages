# Hackers Breach Toptal GitHub, Unleash Malicious NPM Packages

Hackers compromised the official GitHub account of the freelance platform Toptal, using the access to publish malicious NPM packages designed to steal developer credentials and wipe their systems. The attack highlights the persistent threat of software supply chain attacks.

Key takeaways:

🔓 GitHub Account Hijacked: Attackers gained control of Toptal's GitHub organization, exposing private source code and using it as a launchpad for the attack.

📦 Malicious NPM Packages: The hackers published 10 malicious packages to the NPM registry, disguised as legitimate updates to Toptal's 'Picasso' design system.

🔴 Dual-Threat Malware: The malicious scripts were engineered to first steal a developer's GitHub authentication token before attempting to delete the entire filesystem of the compromised computer.

📉 Significant Impact: The malicious packages were downloaded approximately 5,000 times before being removed, indicating a considerable number of developers may have been infected.

📢 Lack of Public Disclosure: Toptal has not issued a public statement about the breach, leaving many potentially affected developers unaware of the risk.

🔗 [Source](https://socket.dev/blog/toptal-s-github-organization-hijacked-10-malicious-packages-published)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-packages.txt`: List of malicious NPM packages.
- `mitre-ttps.txt`: MITRE ATT&CK tactics, techniques, and procedures in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
