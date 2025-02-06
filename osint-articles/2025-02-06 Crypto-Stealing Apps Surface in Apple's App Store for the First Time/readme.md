# Crypto-Stealing Apps Surface in Apple's App Store for the First Time

Kaspersky researchers have discovered crypto-stealing apps in Apple's App Store, marking the first instance of such malware on iOS. These apps use OCR technology to scan device photos for wallet recovery phrases, prompting users to be vigilant about app sources.

Key takeaways:

🔍 First-Time Malware: This is the inaugural discovery of crypto-stealing malware in Apple's App Store, highlighting new security challenges for iOS users.

🖼️ OCR Exploitation: The malicious apps employ optical character recognition (OCR) to identify and steal cryptocurrency wallet recovery phrases from users' photos.

📲 Affected Platforms: The App Store and Google Play have been infiltrated by similar apps, with over 242,000 downloads across both platforms.

🚨 Immediate Action: To prevent theft, users are advised to uninstall suspicious apps and delete images containing sensitive data.

🛡️ Security Implications: This incident calls for heightened scrutiny of app permissions and sources, even on platforms traditionally considered secure like the Apple App Store.

🔗 https://buff.ly/3WNZsR4

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-packages.txt`: List of infected packages in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
