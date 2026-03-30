# Infiniti Stealer Targets macOS via Sophisticated ClickFix Lures

Cybersecurity researchers have identified a new, high-severity threat dubbed Infiniti Stealer that specifically targets macOS users via a deceptive "ClickFix" social engineering tactic. By impersonating legitimate Cloudflare verification pages, attackers trick users into manually compromising their own systems, bypassing traditional browser security and Gatekeeper protections.

Key takeaways:

🚨 Social Engineering Trap: Instead of exploiting software bugs, this campaign uses fake CAPTCHA pages to trick users into copying and pasting a malicious command directly into their macOS Terminal.

🦠 Stealthy Python Payload: The malware is a Python-based infostealer compiled with Nuitka, which turns it into a native macOS binary that is significantly harder for antivirus software to detect and analyze.

🔑 Broad Data Theft: Infiniti Stealer is designed to exfiltrate a wide range of sensitive information, including browser credentials, macOS Keychain entries, cryptocurrency wallets, and secrets found in developer .env files.

🛡️ Defense-in-Depth: To stay safe, never run Terminal commands provided by a website to "fix" an error. Organizations should monitor for suspicious command patterns involving curl | bash or base64 decoding.

🔗 [Source](https://www.malwarebytes.com/blog/threat-intel/2026/03/infiniti-stealer-a-new-macos-infostealer-using-clickfix-and-python-nuitka)

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
