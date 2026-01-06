# APT37 Hackers Weaponize Google's 'Find Hub' to Wipe Android Devices

North Korean hackers are compromising PCs to steal Google credentials, then using the legitimate 'Find Hub' (Find My Device) service to track victims' GPS locations and remotely factory reset their Android phones.

Key takeaways:

💻 Attack Chain: The attack starts with spear-phishing on a PC, leading to credential theft that gives hackers access to the victim's Google account.

🔒 Weaponized Feature: Attackers access the legitimate Google 'Find Hub' service to remotely locate, lock, and wipe all connected Android devices.

🎯 Tactics: Hackers track the victim's GPS via 'Find Hub' and initiate the device wipe when the victim is away from their computer, maximizing disruption.

🤫 Motive: The goal is to silence mobile security alerts, delete attack traces, and hijack the victim's PC-based messenger sessions to spread malware to contacts.

🛡️ Mitigation: Enable Multi-Factor Authentication (MFA) on your Google account immediately. Always verify the sender before opening attachments, even on messenger apps.

🔗 [Source](https://www.genians.co.kr/en/blog/threat_intelligence/android)

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
