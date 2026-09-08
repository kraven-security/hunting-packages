# IT Help Desk Vishing & AiTM Token Theft Drive Cloud Data Extortion Surge

Threat actors are executing sophisticated voice phishing (vishing) campaigns against corporate executives to hijack Microsoft 365 session tokens via Adversary-in-the-Middle (AiTM) proxies. Once they capture session tokens, attackers replay them through residential proxy networks to exfiltrate massive volumes of cloud data for extortion without deploying any malware.

Key takeaways:

**🎯 Target**: Corporate executives, directors, and vice presidents in enterprise sectors including healthcare, finance, construction, and professional services.

**💡 Insight**: The attack bypasses perimeter security entirely without endpoint malware by abusing help desk trust, capturing active session tokens, and replaying them through geo-matched residential proxies to mimic legitimate user activity.

**☑️ Recommendation 1**: Enforce strict identity verification protocols for help desk calls and monitor SIEM logs for anomalous residential proxy sign-ins or bulk SharePoint search queries.

**☑️ Recommendation 2**: Transition to phishing-resistant MFA (FIDO2/WebAuthn hardware keys) and enforce strict Conditional Access policies to restrict session token reuse across unauthorized networks.

🔗 [Source](https://github.com/rtkwlf/wolf-tools/tree/main/pack_alerts/202609-cloud-data-theft-extortion-vishing-proxies)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
