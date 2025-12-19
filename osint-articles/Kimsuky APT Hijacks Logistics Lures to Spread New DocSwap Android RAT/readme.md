# Kimsuky APT Hijacks Logistics Lures to Spread New "DocSwap" Android RAT

The North Korean threat group Kimsuky is targeting mobile users with a sophisticated campaign that uses QR codes and fake CJ Logistics phishing sites to deliver the "DocSwap" malware. This Android Trojan exploits user trust and accessibility permissions to conduct deep-level device surveillance and credential theft.

Key takeaways:

🚨 QR Phishing Tactics: Attackers use malicious QR codes hosted on sites mimicking legitimate delivery services like South Korea's CJ Logistics to lure users into downloading harmful APKs.

🦠 RAT Capabilities: DocSwap provides full Remote Access Trojan (RAT) functionality, enabling attackers to record audio/video via camera and microphone, steal files, and execute shell commands.

🔓 Accessibility Abuse: The malware aggressively requests "Accessibility Services" permissions to bypass security controls, capture sensitive user keystrokes, and monitor session data.

🛡️ Social Engineering: Kimsuky tricks victims by claiming the app is a "safe official release," a tactic specifically designed to persuade users to ignore Android’s built-in "Unknown Sources" security warnings.

💡 Defense Strategy: Organizations should enforce mobile application management (MAM) policies that restrict sideloading and educate employees on the high risks associated with scanning unverified QR codes for software or services.

🔗 [Source](https://www.enki.co.kr/en/media-center/blog/kimsuky-distributing-malicious-mobile-app-via-qr-code)

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
