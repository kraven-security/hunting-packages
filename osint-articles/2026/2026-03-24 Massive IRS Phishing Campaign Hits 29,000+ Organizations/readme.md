# Massive IRS Phishing Campaign Hits 29,000+ Organizations

Microsoft security researchers have detected a widespread phishing operation that leverages the urgency of tax season to target tens of thousands of users across global organizations. The campaign employs highly convincing IRS-themed lures designed to harvest Microsoft 365 credentials and compromise corporate environments.

Key takeaways:

📈 Seasonal Exploitation: Attackers are leveraging "timeliness" by syncing their campaign with the 2026 tax filing season to maximize user engagement and curiosity.

🎭 Authority Impersonation: By using the "prominence" of the IRS, threat actors create a sense of urgency and conflict that pressures users into making quick, poorly vetted decisions.

🔒 Proactive Defense: Organizations should immediately alert staff to be wary of "tax-related" emails and enforce phishing-resistant Multi-Factor Authentication (MFA) to mitigate the risk of account takeover.

🛡️ Broad Impact: With over 29,000 organizations affected, this "ocean-level" threat highlights how attackers are moving from niche targets to broad, high-impact supply chain-style targeting. 

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/03/19/when-tax-season-becomes-cyberattack-season-phishing-and-malware-campaigns-using-tax-related-lures/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `microsoft-hunting-queries.txt`: List of Microsoft Sentinel threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
