# Axios Abuse & "Salty" 2FA Kits Fueling Phishing Attacks

Threat actors are leveraging the Axios HTTP client and a new Phishing-as-a-Service (PhaaS) toolkit called "Salty" to bypass multi-factor authentication (MFA) and compromise Microsoft 365 accounts. These sophisticated campaigns exploit trusted services to appear legitimate, making them difficult to detect.

Key takeaways:

🔒 Axios Abuse: A 241% surge in the use of the Axios user agent has been observed, allowing attackers to intercept and replay HTTP requests to capture session tokens and MFA codes in real-time.

🛡️ Salty 2FA PhaaS: This new toolkit provides attackers with advanced capabilities to steal credentials and bypass MFA, using evasion techniques like geofencing and IP filtering.

🌐 Direct Send Exploit: Microsoft 365's "Direct Send" feature is being abused to spoof trusted users and bypass secure email gateways, leading to a high success rate for these phishing attacks.

💡 Evasion Tactics: Attackers are using legitimate platforms like Google Firebase to host fake login pages, making it harder for users to distinguish between real and fraudulent websites.

🔗 [Source](https://reliaquest.com/blog/threat-spotlight-attackers-exploit-axios-for-automated-phishing/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
