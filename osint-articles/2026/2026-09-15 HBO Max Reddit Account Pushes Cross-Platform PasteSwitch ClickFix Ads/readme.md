# HBO Max Reddit Account Pushes Cross-Platform "PasteSwitch" ClickFix Ad

Threat actors hijacked the official, verified HBO Max Reddit account (`u/hbomax`), deploying 108 malicious advertisements over a frantic 48-hour period. The operation leveraged a cross-platform "PasteSwitch" delivery framework using ClickFix social engineering, tricking victims into self-executing malicious terminal commands that infected Windows and macOS systems with infostealers and cryptocurrency clippers.

Key takeaways

**🎯 Target**: Windows and macOS users across Reddit, specifically targeting individuals seeking streaming apps, AI development software, and system utilities.

**💡 Insight**: Attackers weaponized a verified corporate identity to bypass standard user skepticism, using ClickFix lures (fake download buttons and CAPTCHA prompts) to trick victims into pasting malicious code directly into PowerShell or Terminal, effectively circumventing traditional browser-based download security controls.

**☑️ Recommendation 1**: Audit corporate social media and advertising access controls, enforcing hardware-backed multi-factor authentication (MFA) and strict administrative session privileges to eliminate account takeover vulnerabilities.

**☑️ Recommendation 2**: Configure Endpoint Detection and Response (EDR) agents to flag and block suspicious command-line executions originating from `powershell.exe`, `cmd.exe`, or macOS `Terminal` that perform Base64 decoding or initiate direct outbound C2 calls.

**☑️ Recommendation 3**: Conduct targeted security awareness training educating employees on the dangers of pasting unverified terminal commands ("ClickFix" lures), while deploying endpoint restriction utilities to enforce strict script execution policies across managed devices.

🔗 [Source](https://www.hudsonrock.com/blog/hbo-max-ads-on-a-compromised-reddit-account-exposed-a-massive-pasteswitch-clickfix-operation)

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
