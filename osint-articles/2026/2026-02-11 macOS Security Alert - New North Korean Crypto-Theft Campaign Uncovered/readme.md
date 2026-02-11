# macOS Security Alert: New North Korean Crypto-Theft Campaign Uncovered

Threat actors linked to North Korea are deploying a new macOS malware family called 'HiddenRisk' to infiltrate the cryptocurrency industry and steal digital assets. By using deceptive PDF lures and exploiting system configuration files, these state-sponsored hackers are successfully bypassing standard security protocols to gain persistent access to high-value targets.

Key takeaways

🕵️ Precision Phishing: The attack begins with highly personalized emails containing malicious PDF attachments that appear to be legitimate crypto-market research or investment news, tricking users into initiating the infection.

🔒 Bypassing macOS Defenses: The 'HiddenRisk' malware utilizes sophisticated techniques, including the misuse of legitimate Apple-signed applications and the exploitation of Zsh profile files, to establish persistence and evade Gatekeeper security features.

💰 High-Stakes Targets: This campaign specifically focuses on individuals and organizations within the decentralized finance (DeFi) and crypto-investment space, aiming to exfiltrate private keys and drain digital wallets.

🛡️ Defensive Measures: To protect your assets, exercise extreme caution with unsolicited documents, monitor for unauthorized changes to system configuration files, and consider using hardware wallets for significant cryptocurrency holdings.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/unc1069-targets-cryptocurrency-ai-social-engineering)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara-rules.yar`: List of YARA rules for detecting the threat described in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
