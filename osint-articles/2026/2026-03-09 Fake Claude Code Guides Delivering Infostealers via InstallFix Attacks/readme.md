# Fake 'Claude Code' Guides Delivering Infostealers via 'InstallFix' Attacks

Threat actors are capitalizing on the hype surrounding Anthropic’s new Claude Code tool by creating fraudulent installation guides that trick developers into executing malicious PowerShell commands. This campaign utilizes "InstallFix" social engineering tactics to bypass traditional security perimeters and deploy infostealers designed to harvest sensitive credentials.

Key takeaways

🚨 Sophisticated Social Engineering: Attackers are leveraging SEO poisoning and fake GitHub repositories to lure users to sites that claim to "fix" installation errors by having the user paste malicious code directly into their terminal.

🔒 Targeting Developer Assets: The primary goal of these infostealers is to exfiltrate browser data, cryptocurrency wallets, and sensitive environment variables (API keys) stored on developer machines.

💡 Exploiting AI Adoption Trends: This campaign specifically targets the high-demand AI sector, knowing that developers are often eager to troubleshoot and install the latest coding assistants quickly.

🛡️ Verify Before You Paste: Always use official documentation from verified domains like anthropic.com and never execute PowerShell or Bash scripts from third-party "fix" sites without a thorough code audit.

🔗 [Source](https://pushsecurity.com/blog/installfix/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
