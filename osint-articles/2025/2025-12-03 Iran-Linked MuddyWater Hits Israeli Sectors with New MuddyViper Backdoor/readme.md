# Iran-Linked MuddyWater Hits Israeli Sectors with New MuddyViper Backdoor

Iran's MuddyWater group (affiliated with MOIS) is actively targeting Israeli critical infrastructure and academia using a previously undocumented backdoor dubbed "MuddyViper," deployed via a stealthy loader that mimics a classic video game.

Key takeaways:

🕵️ The Actor: The campaign is attributed to MuddyWater (aka Mango Sandstorm/TA450), an advanced persistent threat actor linked to Iran's Ministry of Intelligence and Security.

🏭 The Targets: Attacks are focused on Israeli sectors, including academia, engineering, local government, manufacturing, technology, transportation, and utilities, plus a tech firm in Egypt.

🐍 Novel Evasion: The group uses a new custom loader named "Fooder" that impersonates the classic "Snake" video game to delay execution and evade automated security analysis.

💻 Infection Vector: The attack chain begins with phishing emails containing PDFs that link to legitimate remote monitoring and management (RMM) tools like Atera, Level, and SimpleHelp to establish initial access.

🦠 The Payload: The "MuddyViper" backdoor grants attackers the ability to execute shell commands, transfer files, and exfiltrate credentials and browser data from compromised systems.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/muddywater-snakes-riverbank/)

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
