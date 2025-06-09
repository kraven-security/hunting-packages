# New Atomic macOS Stealer Campaign Targets Apple Users with ClickFix Social Engineering

A new macOS malware campaign utilizes fake Spectrum CAPTCHA pages to deceive users into executing malicious scripts, which then deploy Atomic Stealer to harvest passwords and cryptocurrency wallets. Russian-speaking cybercriminals exploit ClickFix tactics, urging macOS users to verify URLs and avoid unsolicited commands.

Key takeaways:

🕵️ ClickFix Deception: The campaign employs the ClickFix social engineering tactic, using typosquatted Spectrum domains to serve fake CAPTCHA pages that trick macOS users into running malicious shell scripts via Terminal, deploying Atomic macOS Stealer (AMOS).

🦠 Atomic Stealer Capabilities: AMOS, a Golang-based malware, steals system passwords, Keychain data, browser credentials, and cryptocurrency wallet details, with Russian language comments in the code suggesting Russian-speaking perpetrators.

🔓 Bypassing Security: The malware utilizes native macOS commands to harvest credentials and circumvent security mechanisms, with poorly implemented delivery sites displaying mismatched instructions (e.g., Windows-specific commands for macOS users).

🌐 Broader Campaign Context: The attack also targets Windows, Android, and iOS users with different payloads, utilizing drive-by downloads and redirections, aligning with a surge in ClickFix campaigns that deliver various malware families.

🛡️ Mitigation Advice: Users should avoid executing Terminal commands from untrusted sources, verify website domains, update macOS and browsers, and use real-time antivirus protection to detect and block AMOS infections.

🔗 https://buff.ly/BwuKGeu

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
