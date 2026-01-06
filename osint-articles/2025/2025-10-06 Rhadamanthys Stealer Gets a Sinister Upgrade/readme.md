# Android Spyware Impersonates Signal and ToTok Messengers

The Rhadamanthys Stealer malware, a potent information-stealing tool, has received a significant update, making it even more dangerous and evasive. The new version incorporates advanced features like steganography and device fingerprinting to bypass security measures and steal sensitive data.

Key takeaways:

🔒 Stealthy Payload Delivery: The malware now uses steganography to hide its malicious payloads within seemingly harmless image and audio files.

🛡️ Advanced Evasion: Rhadamanthys employs sophisticated techniques to detect and evade analysis in sandboxed environments.

💡 Professional Operation: The threat actors behind this malware are operating a professional Malware-as-a-Service (MaaS) business, complete with tiered pricing and branding.

🌐 Continuous Evolution: The malware is under constant development, with its creators continuously adding new features and improving its evasion capabilities.

🔗 [Source](https://research.checkpoint.com/2025/rhadamanthys-0-9-x-walk-through-the-updates/)

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
