# New Golang-Based Backdoor Leverages Telegram for Evasive C2 Operations

Researchers have discovered a Golang-based backdoor that uses Telegram's Bot API for command-and-control, executing PowerShell commands and self-destructing to evade detection. This malware, possibly of Russian origin, highlights the evolving use of social platforms in cyber attacks.

Key takeaways:

😈 Suspected Russian Origin: The malware's characteristics suggest it may have been developed by Russian actors.

📲 Telegram C2: Utilizes Telegram's Bot API for command and control communications, making it hard to block.

💻 Golang Advantage: Compiled in Go, offering cross-platform capabilities and evasion of traditional security measures.

🔄 Self-Destructing: Once executed, it checks for specific conditions before copying itself and then terminates to avoid detection.

🚨 Security Concerns: The backdoor's ability to execute PowerShell commands and maintain low visibility raises significant security concerns.

🔗 https://buff.ly/4k0toDz

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All are URLs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
