# Supply Chain Alert: 341 Malicious Skills Discovered on ClawHub

Researchers have identified hundreds of malicious plugins on ClawHub, the marketplace for the OpenClaw AI assistant, designed to hijack systems and steal crypto assets. This campaign, codenamed "ClawHavoc," weaponizes the popularity of AI agents to deliver info-stealers like Atomic Stealer (AMOS) via deceptive third-party "skills."

Key takeaways

🦠 Mass Infection Campaign: Over 340 rogue skills are currently targeting the OpenClaw ecosystem, delivering tailored malware to both macOS and Windows systems through fraudulent "Prerequisites" instructions.

🎭 Deceptive Masquerading: Attackers are using typosquatting and impersonating high-demand tools—such as Solana wallet trackers, Polymarket bots, and YouTube summarizers—to lure users into executing malicious scripts.

🔒 Critical Data Exfiltration: The malware is specifically engineered to harvest high-value data, including OpenAI API keys, browser passwords, SSH credentials, and the assistant's own environment configuration files.

🛡️ Community Defense Active: OpenClaw has launched a new reporting feature; notably, any skill that receives three or more unique reports will now be automatically hidden from the marketplace.

💡 Security Best Practice: Conduct an immediate audit of your installed skills and never execute Terminal or PowerShell scripts from unverified third-party repositories like glot.io.

🔗 [Source](https://www.koi.ai/blog/clawhavoc-341-malicious-clawedbot-skills-found-by-the-bot-they-were-targeting)

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
