# Stealer Evades Detection with Apple XProtect Encryption

A new version of Banshee Stealer for macOS has managed to dodge detection by using encryption from Apple's XProtect. This malware variant has been active for two months, successfully stealing user data while evading security measures.

Key takeaways:

💻 Stealthy Malware: Banshee Stealer, targeting macOS, has adopted encryption techniques from Apple's XProtect to remain undetected.

🔒 Encryption: Uses string encryption similar to XProtect to hide malicious code, making it harder for antivirus software to identify and block it.

🕵️‍♂️ Activity: The malware has been active since November 2024, continuously stealing information from infected Mac systems.

🌐 Source Code Leak: A leak of the malware's source code has occurred, potentially aiding in better detection by antivirus vendors.

⚠️ Security Implications: This case highlights the need for constant updates in security software to counter evolving threats that exploit system features.

🔗 https://buff.ly/427P21Z

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `FireScam_Malware_Indicators.yar`: YARA rule to detect or hunt for malware described in the article.
- `mitre-attack-ttps.txt`: List of MITRE ATT&CK techniques observed.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
> `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
>
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
