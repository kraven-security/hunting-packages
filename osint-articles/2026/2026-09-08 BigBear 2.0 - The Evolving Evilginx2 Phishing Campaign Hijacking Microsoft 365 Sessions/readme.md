# BigBear 2.0: The Evolving Evilginx2 Phishing Campaign Hijacking Microsoft 365 Sessions

CloudSEK researchers have exposed BigBear 2.0, a sophisticated Phishing-as-a-Service (PhaaS) campaign leveraging the Evilginx2 framework to hijack authenticated Microsoft 365 sessions. Operated by a threat actor known as "General Boss," this Adversary-in-the-Middle (AiTM) operation uses automated cookie replay to successfully bypass Multi-Factor Authentication (MFA) on a global scale.

Key takeaways:

**🎯 Target**: The campaign specifically targets organizations using Microsoft 365 with Azure AD / Entra ID, successfully compromising over 3,300 unique victim IPs across 40+ countries.

**💡 Insight**: BigBear 2.0 deploys geo-matched residential proxy pools that mirror the victim's exact location. This makes the malicious login traffic appear legitimate, successfully evading Microsoft's geo-anomaly detection and capturing session cookies regardless of the MFA method used.

**☑️ Recommendation 1**: Enforce strict device compliance policies within your Conditional Access controls. Because the AiTM proxy presents itself as a new, unmanaged browser session, requiring a known, compliant device will block the attacker even if a session cookie is stolen.

**☑️ Recommendation 2**: Transition away from easily intercepted MFA methods (like SMS, TOTP, or push notifications) and deploy phishing-resistant FIDO2/WebAuthn hardware security keys to neutralize AiTM proxy tactics.

🔗 [Source](https://www.cloudsek.com/blog/tracking-bigbear-2-0-evilginx2-phishing-campaign)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `sigma-rules.yml`: List of Sigma detection rules in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
