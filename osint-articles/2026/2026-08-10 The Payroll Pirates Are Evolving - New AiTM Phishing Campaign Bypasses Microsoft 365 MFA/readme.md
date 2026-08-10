# The "Payroll Pirates" Are Evolving: New AiTM Phishing Campaign Bypasses Microsoft 365 MFA 

The "Payroll Pirates" (Storm-2755) use voicemail lures and residential proxies in an AiTM phishing campaign to intercept MFA tokens, gaining automated access to Microsoft 365 accounts and sensitive financial data.

Key takeaways:

🎯 **Target**: Personnel involved in HR, finance, and payroll workflows across the healthcare, education, manufacturing, government, and professional services sectors in the US, Canada, and Europe.

💡 **Insight**: The attackers aren't technically bypassing your MFA; they are proxying the legitimate Microsoft authentication process to intercept session tokens post-login. They then maintain their persistent access through automated scripts and rotating residential proxies to perfectly blend in with normal consumer traffic.

☑️ **Recommendation 1**: If you suspect a compromise, instantly revoke all active sessions for affected users, rotate credentials, re-register MFA, and aggressively audit your HR platforms (like ADP or Workday) for any unauthorized direct deposit changes.

☑️ **Recommendation 2**: Deploy phishing-resistant MFA, such as FIDO2 security keys or Windows Hello for Business. This binds the authentication directly to the legitimate service, completely neutralizing AiTM session relay attacks.

☑️ **Recommendation 3**: Implement Entra ID Conditional Access policies to restrict sign-ins to known, managed devices, and enable Continuous Access Evaluation (CAE) to ensure anomalous sessions are quickly detected and revoked.

🔗 [Source](https://arcticwolf.com/resources/blog/payroll-pirates-strange-new-tides-in-business-email-compromise/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
