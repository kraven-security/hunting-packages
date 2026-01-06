# Android Spyware Impersonates Signal and ToTok Messengers

Two new spyware campaigns, "ProSpy" and "ToSpy," are targeting Android users with fake lookalike versions of the popular Signal and ToTok messaging apps. These malicious apps are designed to steal a wide range of sensitive data from infected devices.

Key takeaways:

🔒 Data Theft: The spyware can steal contacts, SMS messages, call logs, files, and locations, and can even take pictures and record audio.

🛡️ Impersonation and Deception: The malicious apps use the same icons as the legitimate Signal and ToTok apps to trick users into installing them.

💡 Side-Loading is the Primary Vector: The spyware is being distributed through third-party app stores and websites, not the official Google Play Store.

🌐 Constant Monitoring: The spyware establishes a connection with a command-and-control server, allowing attackers to continuously monitor and control the infected device.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/new-spyware-campaigns-target-privacy-conscious-android-users-uae/)

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
