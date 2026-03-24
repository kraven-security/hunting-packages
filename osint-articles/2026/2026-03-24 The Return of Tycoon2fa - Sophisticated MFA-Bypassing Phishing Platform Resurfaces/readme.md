# The Return of Tycoon2fA: Sophisticated MFA-Bypassing Phishing Platform Resurfaces

Despite a major law enforcement disruption earlier this year, the notorious Tycoon2fa phishing-as-a-service (PhaaS) platform has returned with a stealthier, upgraded version. This Adversary-in-the-Middle (AitM) kit is specifically designed to bypass Multi-Factor Authentication (MFA) and hijack Microsoft 365 and Gmail accounts.

Key takeaways:

🛡️ Advanced AitM Attacks: Tycoon2fa remains a top-tier threat, using sophisticated proxying techniques to intercept session tokens, rendering standard SMS or app-based MFA ineffective.

🔒 Improved Stealth: The new version features enhanced obfuscation and updated delivery mechanisms to evade modern email security filters and automated detection systems.

🚨 Persistent Threat Landscape: This resurgence highlights the extreme resilience of Phishing-as-a-Service operations; law enforcement "takedowns" are often temporary setbacks rather than permanent solutions.

💡 Security Recommendation: To counter these AitM threats, organizations should prioritize the transition to phishing-resistant MFA (such as FIDO2 security keys) and monitor for anomalous login locations or session behaviors.

🔗 [Source](https://www.crowdstrike.com/en-us/blog/tycoon2fa-phishing-as-a-service-platform-persists-following-takedown/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
