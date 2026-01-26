# Konni Hackers Weaponize AI to Target Blockchain Developers

A new cyber espionage campaign by the North Korea-linked threat actor Konni (Opal Sleet) is making headlines for its use of AI-generated malware. Targeting blockchain engineers and developers across the Asia-Pacific region, the group is moving beyond traditional spear-phishing into more sophisticated, automated territory.

Key takeaways

🤖 AI-Built Backdoors: The group is now using AI-generated PowerShell malware to create persistent backdoors. This allows them to iterate faster and produce code that is harder for traditional antivirus tools to flag.

🏢 Targeting the Development Pipeline: The lures are specifically designed to look like legitimate blockchain project documentation (e.g., technical architecture, budgets). The goal is to compromise dev environments to steal API credentials, source code, and cryptocurrency.

📦 Multi-Stage Infection: The attack typically starts with a Discord-hosted link delivering a ZIP archive. Once opened, it executes a complex chain involving LNK shortcuts, CAB archives, and UAC bypass techniques to gain admin privileges.

🌏 Geographic Expansion: While historically focused on South Korea, this latest wave has seen samples uploaded from Japan, Australia, and India, indicating that Konni is broadening its scope to global Web3 and crypto hubs.

💡 Evolving Tactics: This campaign mirrors a broader trend among North Korean groups (such as Lazarus), which impersonate recruiters and use "technical screens" to trick high-value targets into installing malware.

🔗 [Source](https://research.checkpoint.com/2026/konni-targets-developers-with-ai-malware/)

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
