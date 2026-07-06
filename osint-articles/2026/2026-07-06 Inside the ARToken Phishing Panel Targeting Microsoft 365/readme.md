# Inside the ARToken Phishing Panel Targeting Microsoft 365 

Security researchers have uncovered ARToken, a highly sophisticated Phishing-as-a-Service (PhaaS) panel that abuses Microsoft's legitimate device code authorization flow to completely bypass multi-factor authentication (MFA). This platform equips cybercriminals with an extensive suite of post-compromise capabilities, enabling persistent session hijacking, tailored business email compromise (BEC) schemes, and automated cloud data exfiltration.

Key takeaways

**🎯 Target**: Microsoft 365 cloud environments, specifically aiming at enterprise personnel in finance and accounts-payable departments through hyper-personalized vendor invoice fraud.

**💡 Insight**: Unlike traditional AitM phishing that recreates fake login portals, ARToken weaponizes Microsoft's own OAuth 2.0 Device Authorization Grant and protects its infrastructure using an advanced, seven-layer client-side anti-analysis engine designed to completely blind automated security scanners and sandboxes.

**☑️ Recommendation 1**: Immediately restrict or disable the Device Code flow in Microsoft Entra ID (Azure AD) if it is not vital to your day-to-day operations, as this flow is rarely required for standard corporate workflows.

**☑️ Recommendation 2**: Implement aggressive monitoring and alerting for look-alike domains (e.g., abusing platforms like Cloudflare Workers) and audit your environment for the creation of new email forwarding or inbox rules right after an external login.

**☑️ Recommendation 3**: Accelerate your migration toward true phishing-resistant Multi-Factor Authentication (such as FIDO2 security keys or Microsoft Authenticator with passkeys) and implement strict Conditional Access policies that enforce managed device compliance and automated token revocation on high-risk signals.

🔗 [Source](https://blog.talosintelligence.com/artoken-inside-an-eviltokens-affiliate-panel-targeting-microsoft-365/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
