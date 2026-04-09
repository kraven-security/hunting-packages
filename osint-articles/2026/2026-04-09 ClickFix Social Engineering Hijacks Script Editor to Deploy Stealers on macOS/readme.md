# ClickFix Social Engineering Hijacks Script Editor to Deploy Stealers on macOS

A new macOS malware campaign is leveraging "ClickFix" social engineering to trick users into executing malicious scripts via the native Script Editor app. This sophisticated attack bypasses traditional browser protections by making the victim the primary execution vector.

Key takeaways

🛠️ The "ClickFix" Trap: Attackers lure victims to fake meeting or error pages that prompt them to "fix" a supposed system issue by copy-pasting code directly into the macOS Script Editor.

🦠 High-Impact Stealers: Once the victim runs the script, it downloads and executes malware that harvests keychain data, browser credentials, and sensitive local files.

⚠️ Psychology Over Exploits: This campaign demonstrates a critical shift where threat actors prioritize human psychology and user interaction over technical software vulnerabilities to gain initial access.

🛡️ Defensive Hardening: Organizations must update security training to emphasize that legitimate services will never ask users to execute terminal commands or scripts to "fix" web page errors.

🔗 [Source](https://www.jamf.com/blog/clickfix-macos-script-editor-atomic-stealer/)

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
