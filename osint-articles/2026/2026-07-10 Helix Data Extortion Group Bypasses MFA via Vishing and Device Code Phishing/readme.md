# Helix Data Extortion Group Bypasses MFA via Vishing and Device Code Phishing 

A newly emerged cyber extortion group named Helix is bypassing traditional malware defenses by utilizing highly manipulative voice phishing (vishing) and device code phishing to hijack corporate Microsoft 365 accounts. Once an authenticated session is captured, the threat actors systematically map and exfiltrate massive volumes of sensitive corporate data directly from SharePoint environments to fuel subsequent ransom demands.

**Key takeaways**

**🎯 Target**: Enterprise Microsoft 365 environments, specifically high-value corporate SharePoint repositories and cloud collaboration libraries, focusing heavily on employees who can be socially engineered through spoofed management identities.

**💡 Insight**: Rather than executing traditional endpoint malware, Helix operates silently by utilizing caller ID spoofing to impersonate the victim's direct manager over the phone, tricking the target into authenticating a device code that captures an active session token and completely bypasses multi-factor authentication (MFA).

**☑️ Recommendation 1**: Proactively disable device code authentication flows network-wide if they are not an absolute operational necessity, or deploy strict detection rules to alert on device code authorizations originating from residential proxy pools or anomalous geographic centers.

**☑️ Recommendation 2**: Monitor Microsoft 365 and Azure AD audit logs specifically for automated SharePoint library enumeration and sudden bulk download activity from single user accounts, while implementing automated web filters to block exchanges with newly registered domains.

**☑️ Recommendation 3**: Transition toward a strict Zero-Trust model by restricting access to critical SaaS ecosystems and SharePoint resources exclusively to verified, fully managed corporate endpoints, while updating security awareness protocols to include advanced vishing simulation exercises.

🔗 [Source](https://reliaquest.com/blog/threat-spotlight-helix-new-name-in-data-extortion-ecosystem)

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
