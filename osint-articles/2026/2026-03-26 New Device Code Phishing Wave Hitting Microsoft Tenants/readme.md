# New Device Code Phishing Wave Hitting Microsoft Tenants

A highly sophisticated phishing campaign is currently exploiting the Microsoft "Device Code" flow to bypass Multi-Factor Authentication (MFA) and gain unauthorized access to hundreds of organizational environments. This attack strategy leverages legitimate Microsoft authentication processes to deceive users into granting attackers full account tokens, effectively "living off the land" to evade traditional security filters.

Key takeaways 

🚨 MFA Bypass Vulnerability: Attackers use the Device Code flow to trick users into authorizing a malicious session on a legitimate Microsoft page, potentially rendering standard MFA protections ineffective.

💡 Infrastructure Exploitation: By using legitimate Microsoft URLs (microsoft.com/devicelogin) for the code entry, the campaign successfully bypasses many automated email security systems that look for malicious links.

🛡️ Defensive Hardening: Organizations should immediately review Entra ID (Azure AD) sign-in logs for unusual device code requests and consider disabling this flow if it is not required for your specific business operations.

🔒 Critical User Training: Ensure your team understands that a 9-character code should only be entered if they personally initiated a login on a secondary device without a browser; unexpected code requests are a red flag for an active attack.

🔗 [Source](https://www.huntress.com/blog/railway-paas-m365-token-replay-campaign)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `microsoft-sentinel-queries.txt`: List of Microsoft Sentinel detection queries related to the threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
