# Sophisticated AiTM Phishing Targeting Corporate Compliance

Microsoft Defender Research has uncovered a massive phishing campaign that weaponizes "Code of Conduct" reviews to bypass even the most common security measures. By blending high-pressure social engineering with "Adversary-in-the-Middle" (AiTM) technology, attackers successfully hijack authenticated sessions in real time.

**Key takeaways**

🎯 **Target**: Over 35,000 users across 13,000+ organizations globally, with a heavy focus on the Healthcare (19%), Financial Services (18%), and Technology (11%) sectors.

💡 **Insight**: The campaign uses "preemptive authenticity statements" (e.g., claiming the email was "vetted by internal security") and multiple CAPTCHA gates. These steps are designed to build psychological trust with the victim while effectively blocking automated security scanners from analyzing the final malicious payload.

☑️ **Recommendation 1**: (Long-term) Upgrade to Phishing-Resistant MFA. Move beyond SMS or standard push notifications to hardware keys (FIDO2) or Windows Hello. These methods bind the authentication to the specific site, making it impossible for an AiTM proxy to steal a usable session token.

☑️ **Recommendation 2**: (Long-term) Implement Conditional Access & Token Shortening**.** Configure policies that evaluate device health and IP reputation before granting access. Additionally, reducing the lifetime of session tokens limits the "window of opportunity" for an attacker to use a stolen cookie.

☑️ **Recommendation 3**: (Short-term) Audit Internal Communication Templates**.** Educate employees that "security-approved" banners and CAPTCHAs are now common attacker tactics. Verify that all compliance-related reviews are initiated through known, official internal portals rather than email-based PDF links.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/05/04/breaking-the-code-multi-stage-code-of-conduct-phishing-campaign-leads-to-aitm-token-compromise/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-actor-emails.txt`: List of threat actor email addresses in the article.


<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
