# 1,700+ Malicious Packages: North Korean Hacking Expansion Hits Major Developer Ecosystems

North Korean threat actors have significantly expanded their "Contagious Interview" campaign, deploying over 1,700 malicious packages across Go, Rust, PHP, npm, and PyPI to infiltrate developer environments. This coordinated supply chain attack uses stealthy code execution and social engineering to deploy high-functioning infostealers and remote access trojans (RATs).

Key takeaways:

🕵️‍♂️ Cross-Ecosystem Infiltration: Attackers are systematically targeting developers by embedding malware in packages such as logtrace and pino-debugger, masquerading as routine utilities across five major open-source ecosystems to gain initial access.

🦠 Stealthy Execution: In a sophisticated move, the malicious code is hidden within legitimate functions and is not triggered during installation, allowing it to bypass standard security scans that look for immediate execution patterns.

⚠️ Social Engineering Lures: The campaign leverages fake video conferencing invites (Zoom/Teams) and "ClickFix" phishing lures, specifically targeting developers through multi-week social engineering campaigns on LinkedIn and Slack.

🔒 Mitigation Urgency: Organizations are urged to implement strict software supply chain audits, verify the integrity of all open-source dependencies, and train employees to recognize sophisticated social engineering attempts involving external meeting links.

🔗 [Source](https://socket.dev/blog/contagious-interview-campaign-spreads-across-5-ecosystems)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-actor-aliases.txt`: List of threat actor identifiers.
- `malicious-go-modules.txt`: List of malicious Go modules identified in the article.
- `malicious-npm-packages.txt`: List of malicious npm packages identified in the article.
- `malicious-pypi-packages.txt`: List of malicious PyPi packages identified in the article.
- `malicious-php-packages.txt`: List of malicious PHP packages identified in the article.
- `malicious-rust-crates.txt`: List of malicious rust crates identified in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
