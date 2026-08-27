# Inside 'NovaCookies': The $320/Month AitM PhaaS Bypassing MFA at Scale 

Researchers uncovered "NovaCookies," a subscription-based Adversary-in-the-Middle (AitM) phishing platform that sells for $320 a month and captures live Microsoft 365 session cookies. By abusing genuine DocuSign notifications and legitimate redirect hops, the service tricks users and security filters alike to execute real-time session hijacking, rendering standard MFA protections ineffective.

Key takeaways:

**🎯 Target**: Hundreds of organizations worldwide, predominantly in the United States (49.2%), as well as the U.K., Canada, Germany, Israel, and the U.A.E., relying on Microsoft 365 productivity suites.

**💡 Insight**: NovaCookies commoditizes complex session theft into an accessible subscription service, disguising malicious links inside legitimate DocuSign share emails and using live authentication proxies to steal session tokens after password and MFA entry.

**☑️ Recommendation 1**: Update incident response playbooks to ensure that any suspected account compromise triggers the explicit revocation of active Microsoft 365 session tokens and refresh tokens, as standard password resets will not invalidate an attacker's stolen session.

**☑️ Recommendation 2**: Accelerate the transition from OTP/push-based MFA to phishing-resistant authentication standards (such as FIDO2 hardware keys, WebAuthn, or passkeys) and implement context-aware device posture controls.

🔗 [Source](https://socradar.io/blog/anonymouskit-ai-phaas-supply-chain/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
