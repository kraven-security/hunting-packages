# New 'Plague' PAM Backdoor Exposes Critical Linux Systems to SSH Hijacking

A stealthy and sophisticated Linux backdoor, dubbed "Plague," has been discovered targeting the Pluggable Authentication Module (PAM). This malicious module allows attackers to bypass system authentication, gain persistent SSH access, and steal credentials, all while remaining undetected by most antivirus engines for over a year.

Key takeaways:

🔒 Deep Integration: Plague operates as a malicious PAM, allowing it to deeply integrate into the authentication stack, survive system updates, and leave almost no forensic traces.

🚨 Silent Credential Theft: The backdoor can steal user credentials and allows attackers to bypass authentication checks silently, making it exceptionally dangerous.

🛡️ Evasive Maneuvers: Plague employs advanced obfuscation techniques, anti-debugging, and actively erases its footprint by tampering with environment variables to avoid detection by traditional security tools.

🌐 Active Threat: The presence of multiple variants on VirusTotal suggests that this backdoor is under active development. While attribution is unclear, its sophistication points to a skilled threat actor.

🔗 [Source](https://www.nextron-systems.com/2025/08/01/plague-a-newly-discovered-pam-based-backdoor-for-linux/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `yara-rule.yar`: A YARA rules provided in the article for threat hunting the malware.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
