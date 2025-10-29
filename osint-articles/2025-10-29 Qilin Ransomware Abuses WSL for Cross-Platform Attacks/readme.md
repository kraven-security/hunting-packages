# Qilin Ransomware Abuses WSL for Cross-Platform Attacks

The Qilin ransomware group is now abusing the Windows Subsystem for Linux (WSL) to execute its Linux-based encryptor directly on Windows systems. This hybrid technique allows them to bypass standard EDR and antivirus tools focused on Windows threats.

Key takeaways:

🐧 Hybrid Attack Vector: Attackers are running their Linux ransomware variant directly on Windows machines by leveraging WSL, demonstrating a sophisticated cross-platform strategy.

🛡️ Evasion Tactic: This method is designed to bypass security tools that are primarily focused on monitoring native Windows executables, allowing the malware to operate undetected.

📦 Payload Delivery: The attack chain often involves transferring the Linux binary to the Windows host using legitimate tools like WinSCP after gaining initial access.

💥 Combined TTPs: This technique is often used alongside other advanced methods, like Bring Your Own Vulnerable Driver (BYOVD), to disable endpoint security before encryption.

🌐 Growing Threat: Qilin (aka Agenda) remains one of the most active RaaS operations, using its Rust-based, cross-platform malware to target critical sectors globally.


🔗 [Source](https://blog.talosintelligence.com/uncovering-qilin-attack-methods-exposed-through-multiple-cases/)

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
