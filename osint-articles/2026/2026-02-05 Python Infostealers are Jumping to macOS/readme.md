# Python Infostealers are Jumping to macOS

Microsoft security researchers have issued a warning regarding a surge in Python-based information stealers that are successfully bypassing traditional platform boundaries to target macOS environments. By leveraging the cross-platform nature of Python and sophisticated "ClickFix" social engineering, attackers are now hunting for iCloud Keychains, developer secrets, and crypto wallets at scale.

Key takeaways:

🍎 macOS in the Crosshairs: Attackers are using Python’s flexibility to deploy malware like AMOS and MacSync, proving that macOS is increasingly targeted by threats once reserved for Windows.

🖱️ Deceptive "ClickFix" Tactics: Malicious campaigns are abusing Google Ads and fake software installers to trick users into running malicious AppleScripts via deceptive "copy-paste" prompts.

💎 High-Value Data Exfiltration: These stealers don't just stop at passwords; they are specifically optimized to harvest session cookies, authentication tokens, and sensitive developer credentials.

🛡️ Proactive Monitoring: Organizations must tighten security by monitoring for unusual Terminal activity, unauthorized iCloud Keychain access, and suspicious network egress to newly registered domains.

💡 Defense Through Education: Training users to recognize malvertising redirect chains and fake "fix" prompts remains the most effective way to break the initial infection chain.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/02/02/infostealers-without-borders-macos-python-stealers-and-platform-abuse/)

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
