# PureCrypter Deploys Agent Tesla and New TorNet Backdoor in Ongoing Cyberattacks

PureCrypter malware has been used in sophisticated phishing campaigns to deploy Agent Tesla and a new backdoor called TorNet, targeting users primarily in Poland and Germany. This malware leverages TOR for stealth and includes anti-analysis techniques to evade detection.

Key takeaways:

🐍 Malware Deployment: PureCrypter has been identified as the vector for distributing Agent Tesla, Snake Keylogger, and the newly observed TorNet backdoor.

📧 Phishing Campaigns: The attacks have been ongoing since at least July 2024, with phishing emails disguised as financial confirmations or order receipts.

🌐 TOR Utilization: TorNet uses the TOR network for communication, enhancing its stealth capabilities and making it harder to track.

🛡️ Anti-Analysis: The malware employs techniques to bypass antivirus, sandboxing, and other security measures, including disconnecting the victim's network briefly to drop payloads.

🎯 Geographic Focus: Poland and Germany have been the primary targets, but the malware could expand to other regions

🔗 https://buff.ly/4gl6jZ4

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
