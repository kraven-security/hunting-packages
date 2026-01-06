# New EVALUSION ClickFix Campaign Deploys Amatera Stealer and NetSupport RAT

A sophisticated new phishing campaign dubbed "EVALUSION" is utilizing the ClickFix social engineering tactic to trick users into executing malicious commands, ultimately deploying Amatera Stealer and NetSupport RAT. This attack, tracked by eSentire, leverages fake reCAPTCHA verification pages to compromise systems and steal sensitive data.

Key takeaways:

🕵️‍♂️ ClickFix Tactic: Victims are lured to fake pages mimicking reCAPTCHA verification (often mimicking Cloudflare or Booking.com) and tricked into running malicious commands via the Windows Run dialog. 

🦠 Dual Threat: The campaign delivers Amatera Stealer, a potent malware evolving from ACR Stealer, alongside the well-known NetSupport RAT for remote access. 

🛡️ Evasion Techniques: Amatera uses advanced methods like WoW64 SysCalls to bypass security sandboxes and EDR solutions, making detection difficult. 

⚡ Targeted Infection: The malware checks if the victim's machine is part of a domain or contains valuable files (like crypto wallets) before downloading the secondary NetSupport RAT payload. 

🧩 Multi-Stage Attack: The infection chain involves "mshta.exe," PowerShell scripts, and payloads hosted on legitimate services like MediaFire to evade initial blocks.


🔗 [Source](https://www.esentire.com/blog/evalusion-campaign-delivers-amatera-stealer-and-netsupport-rat)

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
