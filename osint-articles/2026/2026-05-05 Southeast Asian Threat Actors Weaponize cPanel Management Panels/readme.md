# Southeast Asian Threat Actors Weaponize cPanel Management Panels

New research reveals a persistent campaign by Southeast Asian-linked threat groups targeting cPanel management interfaces to compromise web hosting environments at scale. These actors are moving beyond simple data theft, instead repurposing hijacked servers as stealthy nodes for global phishing and command-and-control (C2) infrastructure.

**Key takeaways**

🎯 **Target**: Small-to-medium-sized businesses (SMEs) and hosting providers using the cPanel management platform, with a high concentration in the e-commerce and financial services sectors.

💡 **Insight**: The campaign uses "infrastructure persistence" tactics, in which attackers exploit misconfigured panels to embed backdoors directly in the server's root directory, allowing them to bypass traditional website-level security scans and maintain long-term access.

☑️ **Recommendation 1**: (Immediate) Audit all cPanel accounts for unauthorized administrative users and enforce phishing-resistant Multi-Factor Authentication (MFA) for all login attempts on management ports 2083 and 2087\.

☑️ **Recommendation 2**: (Short-term) Implement strict IP-based Access Control Lists (ACLs) to restrict cPanel access to known, authorized administrative networks only, effectively neutralizing credential-stuffing attempts.

☑️ **Recommendation 3**: (Long-term) Transition to a "Zero Trust" architecture for infrastructure management and deploy real-time file integrity monitoring (FIM) to detect anomalous modifications to system-level cron jobs and configuration files.

🔗 [Source](https://ctrlaltintel.com/research/SEA-CPanel/)

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
