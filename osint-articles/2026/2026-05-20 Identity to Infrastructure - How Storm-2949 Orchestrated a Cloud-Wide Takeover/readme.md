# Identity to Infrastructure: How Storm-2949 Orchestrated a Cloud-Wide Takeover

Microsoft Threat Intelligence exposed a Storm-2949 campaign where a single identity compromise via password resets led to a massive breach of Microsoft 365 and Azure. By weaponizing native cloud features rather than malware, the actor bypassed security controls to exfiltrate sensitive data.

Key takeaways

**🎯 Target**: High-value enterprise cloud identities, specifically targeting IT administrators and senior leadership, alongside associated Microsoft 365 applications and production Azure PaaS/IaaS workloads.

**💡 Insight**: Storm-2949 achieved advanced evasion by entirely avoiding custom malware during initial access, instead weaponizing legitimate administrative features like Self-Service Password Reset (SSPR) workflows, Graph API queries, and native Azure VM extensions to blend seamlessly into normal administrative behavior.

**☑️ Recommendation 1**: Audit and enforce phishing-resistant Multi-Factor Authentication (MFA) for all high-value accounts, and heavily restrict Self-Service Password Reset (SSPR) registration workflows to prevent malicious device enrollment.

**☑️ Recommendation 2**: Implement rigorous behavior-based monitoring and immediate alerting on high-risk Azure management plane operations, such as extracting App Service publishing profiles (`publishxml`), downloading storage account keys (`listkeys`), and altering SQL firewall configurations.

**☑️ Recommendation 3**: Establish strict conditional access for utilities like Azure 'Run Command' and 'VMAccess' to block guest-level execution, preventing token theft and unauthorized RMM tool installation. 

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/05/18/storm-2949-turned-compromised-identity-into-cloud-wide-breach/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
