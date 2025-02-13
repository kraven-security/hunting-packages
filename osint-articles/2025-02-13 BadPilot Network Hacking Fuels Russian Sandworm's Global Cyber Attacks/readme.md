# BadPilot Network Hacking Fuels Russian Sandworm's Global Cyber Attacks

Microsoft has uncovered BadPilot, a subgroup of the notorious Russian Sandworm hacking group, engaging in a widespread campaign exploiting eight security flaws to infiltrate critical sectors worldwide, including energy and telecommunications.

Key takeaways:

😈 Russian Cyber Threat: BadPilot, a part of Sandworm (also known as APT44), is behind a sophisticated cyber espionage operation.

🔓 Exploited Vulnerabilities: Eight different security flaws are used to gain initial access to networks globally.

🌐 Global Targets: The campaign targets critical infrastructure in over 15 countries, focusing on energy, oil and gas, and government entities.

🕵️ Persistent Access: The aim is to maintain long-term access for espionage and potential future attacks.

⚠️ Urgent Need for Vigilance: Organizations are advised to patch known vulnerabilities and strengthen network defenses.

🔗 https://buff.ly/4b0yKKL

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `kql-queries.txt`: List of KQL detection queries in the article.
- `yara.yar`: YARA detection rule in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
