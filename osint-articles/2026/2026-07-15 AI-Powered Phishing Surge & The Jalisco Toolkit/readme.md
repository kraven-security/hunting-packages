# AI-Powered Phishing Surge & The "Jalisco" Toolkit 

An expanding ecosystem of AI-driven Phishing-as-a-Service (PhaaS) tools is empowering attackers to bypass traditional multi-factor authentication (MFA) at an alarming scale. Newly discovered toolkits like "Jalisco" and "OmegaLord" harvest OAuth tokens to establish persistent, stealthy access within Microsoft 365 environments.

Key takeaways:

**🎯 Target**: Microsoft 365 environments and Microsoft Entra ID tenants, with attackers specifically aiming to exfiltrate sensitive data from SaaS platforms for extortion.

**💡 Insight**: The "Jalisco" toolkit leverages a real-time API for "lure-generation" to provision fresh OAuth device codes on the fly, completely defeating Microsoft's standard 15-minute time-to-live (TTL) security limits. Once inside, attackers enroll multiple rogue devices to secure a Primary Refresh Token (PRT), ensuring their access survives normal password resets.

**☑️ Recommendation 1**: Disable device code authentication in Microsoft Entra ID via a Conditional Access policy that blocks all users and cloud apps, keeping exceptions strictly limited to formally documented accounts.

**☑️ Recommendation 2**: Proactively audit your Entra ID tenant for unauthorized device enrollments. Flag and investigate accounts associated with multiple newly registered devices that use generic naming conventions such as "microsoft-*" or "WINDOWS-*".

**☑️ Recommendation 3**: Revamp your incident response playbooks for token-based compromises. Ensure that identifying and revoking all rogue devices and active sessions are mandatory steps, as standard credential resets are no longer sufficient to evict attackers using OAuth tokens.

🔗 [Source](https://reliaquest.com/blog/threat-spotlight-jalisco-toolkit-and-ai-powered-phishing-surge)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
