# "Com"-Affiliated Hackers Hijack Cloud Accounts via Vishing for High-Profile Extortion

Palo Alto Networks Unit 42 uncovered persistent voice phishing (vishing) campaigns by cybercrime groups impersonating IT support to capture SSO sessions, register rogue MFA devices, and steal cloud data for extortion.

Key takeaways:

**🎯 Target:** Data-rich enterprises across healthcare, financial services, legal services, technology, and transportation, primarily concentrated in the U.S., UK, and Australia.

**💡 Insight:** Attackers combine urgent IT support vishing calls with AiTM phishing domains and malicious browser extensions to hijack live MFA tokens, register unauthorized devices, and post ransom demands directly to internal Microsoft Teams channels.

**☑️ Recommendation 1:** Immediately transition workforce SSO accounts to phishing-resistant MFA (FIDO2/WebAuthn passkeys) and enforce strict browser extension allowlists to neutralize AiTM proxies and credential-stealing add-ons.

**☑️ Recommendation 2:** Tighten IT help desk verification workflows by requiring out-of-band identity validation for all password resets and MFA enrollments, and train employees to reject unsolicited calls directing them to external "passkey setup" domains.

**☑️ Recommendation 3:** Implement identity threat detection and response (ITDR) alerts for unauthorized MFA device registrations, anomalous OAuth app consents, logins from residential proxies, and bulk exports from Microsoft 365, SharePoint, and OneDrive.

🔗 [Source](https://unit42.paloaltonetworks.com/com-affiliate-vishing-attacks/)

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
