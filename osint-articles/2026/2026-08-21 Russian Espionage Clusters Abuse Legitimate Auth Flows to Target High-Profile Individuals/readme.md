# Russian Espionage Clusters Abuse Legitimate Auth Flows to Target High-Profile Individuals 

Google Threat Intelligence Group (GTIG) revealed three Russian espionage clusters (UNC6293, UNC7005, and UNC5976) abusing legitimate authentication mechanisms, such as OAuth flows, Application-Specific Passwords (ASPs), and session-linking features, to gain persistent access to personal accounts without triggering anti-phishing alarms.

Key takeaways:

**🎯 Target:** Personnel and high-profile individuals in academia, aerospace, defense, government, diplomacy, and think tanks across Europe, Ukraine, Armenia, and the U.S.

**💡 Insight:** Attackers exploit trust in native authentication workflows by tricking targets into entering ASPs into malicious forms, granting high-privilege OAuth permissions, or scanning QR codes for device linking. Since these leverage legitimate identity flows, they often bypass traditional MFA and security controls.

**☑️ Recommendation 1:** Immediately conduct an organization-wide audit to review and revoke unauthorized OAuth application consents and active Application-Specific Passwords across enterprise identity providers.

**☑️ Recommendation 2:** Deliver targeted threat awareness training to at-risk personnel, instructing them never to enter ASPs into web forms or scan external QR codes requesting device-linking for messaging applications.

**☑️ Recommendation 3:** Enforce strict SaaS application governance by disabling unmonitored user-consent OAuth grants, requiring admin approval for third-party app integrations, and implementing FIDO2 hardware security keys.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/distinct-clusters-target-individuals-of-interest-to-russia)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
