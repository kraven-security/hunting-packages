# How Fake IT Helpdesks are Hijacking Cloud Identities 

Threat actors are launching sophisticated campaigns by calling or texting employees on personal devices, posing as IT support, and tricking them into "updating" their passkeys or MFA configurations. Once victims authenticate via adversary-in-the-middle (AiTM) or device-code phishing sites, attackers steal session tokens, establish their own MFA persistence, and use automated tools to rapidly exfiltrate sensitive cloud data.

Key takeaways:

**🎯 Target**: Employees and their enterprise cloud identities, specifically targeted via personal mobile phones (calls, SMS) or trusted internal platforms like Microsoft Teams by attackers impersonating the organization's IT helpdesk.

**💡 Insight**: Attackers use "passkey" or "SSO setup" purely as a deceptive social engineering lure; once they gain initial access, they immediately register their own MFA devices to maintain persistent access and leverage the Microsoft Graph API for rapid, automated data reconnaissance and exfiltration.

**☑️ Recommendation 1**: Immediately investigate anomalous sign-ins that are quickly followed by new MFA method registrations or high-volume Microsoft Graph activity. If you confirm a compromise, forcefully revoke all active sessions and delete unauthorized authentication methods.

**☑️ Recommendation 2**: Transition to true phishing-resistant MFA (such as FIDO2 security keys) and disable less secure authentication methods, like SMS or voice approvals, which are easily bypassed by AiTM tactics.

**☑️ Recommendation 3**: Ensure that any device (including personal mobile phones) used to access corporate resources is enrolled in Mobile Device Management (MDM) or endpoint security solutions. This allows security teams to capture threat telemetry and proactively block rapidly rotating phishing domains.

🔗 [Source](https://www.greynoise.io/blog/ai-orchestrated-campaign-against-papercut-ng-mf)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `hunting-queries.txt`: List of Micorosft advanced threat hunting queries in KQL in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
