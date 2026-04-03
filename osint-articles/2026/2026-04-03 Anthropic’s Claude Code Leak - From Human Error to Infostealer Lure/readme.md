# Anthropic’s Claude Code Leak: From Human Error to Infostealer Lure

Anthropic inadvertently exposed over 512,000 lines of its "Claude Code" source code through a misconfigured npm package, triggering a wave of malicious mirrors and supply-chain risks. While the company confirmed the exposure was due to a packaging error rather than a breach, threat actors are already weaponizing the incident to distribute malware.

Key takeaways:

🚨 Weaponized Lures: Cybercriminals are currently using "leaked Claude Code" repositories on GitHub as lures to distribute Vidar infostealers and GhostSocks proxies.

🛡️ Supply Chain Vulnerability: The leak occurred because a JavaScript source map was accidentally included in version 2.1.88, allowing anyone to reconstruct the original TypeScript codebase.

🔒 Malicious Typosquatting: Attackers have begun registering internal-looking npm package names to target developers who are experimenting with the leaked source.

💡 Defense Priority: Organizations should immediately audit internal npm mirrors for *.map files and enforce strict policies against installing software from unverified "leak" sources.

🔗 [Source](https://www.zscaler.com/blogs/security-research/anthropic-claude-code-leak)

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
