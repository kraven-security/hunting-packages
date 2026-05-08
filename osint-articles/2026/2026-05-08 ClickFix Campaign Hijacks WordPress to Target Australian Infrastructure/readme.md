# ClickFix Campaign Hijacks WordPress to Target Australian Infrastructure

The Australian Signals Directorate (ASD) warned of the "ClickFix" social engineering campaign, which compromises Australian WordPress sites to deliver Vidar Stealer by tricking users into manually executing malicious commands via fake CAPTCHA checks. 

Key takeaways:

🎯 **Target**: Australian infrastructure and organizations across multiple sectors, leveraging the trusted reputation of compromised local business websites to lower victim suspicion.

💡 **Insight**: This campaign brilliantly exploits human psychology over technical vulnerabilities; by presenting a fake "Cloudflare" verification prompt that requires the user to "Paste and Run" a command from their clipboard, the attacker effectively turns the victim into the delivery mechanism, bypassing traditional automated security blocks.

☑️ **Recommendation 1**: **Immediate User Education**: Alert staff that legitimate security checks (like Cloudflare or Google CAPTCHA) will **never** ask a user to copy-paste commands into a Windows Run dialog or PowerShell terminal.

☑️ **Recommendation 2**: **Technical Hardening**: Restrict the execution of PowerShell and other administrative shells for non-privileged users and implement "Constrained Language Mode" to prevent the execution of the obfuscated scripts used in these "pastejacking" attacks.

☑️ **Recommendation 3**: **Credential Hygiene**: Since Vidar Stealer specifically targets browser-saved passwords and session cookies, enforce the use of enterprise-grade password managers and implement phishing-resistant Multi-Factor Authentication (MFA) to mitigate the impact of stolen credentials.

🔗 [Source](https://www.cyber.gov.au/about-us/view-all-content/alerts-and-advisories/clickfix-distributing-vidar-stealer-via-wordpress-targeting-australian-infrastructure)

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
