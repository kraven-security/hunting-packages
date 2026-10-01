# Phishing Attacks Stack Dual RMM Tools for Persistent Access 

Recent phishing campaigns abuse signed MSP360 RMM installers disguised as business documents for initial access, then deploy ScreenConnect for redundant remote access. This dual-RMM tactic blends into routine administration while maintaining persistent control over target environments.

Key takeaways

**🎯 Target**: Organizations targeted via social-engineering phishing lures disguised as workplace meeting requests, PDF software updates, tax documents, and job offers.

**💡 Insight**: Threat actors use a "dual-RMM" deployment tactic, using an initial MSP360 installation to stage and execute ScreenConnect, establishing redundant remote-management footholds that evade traditional detection by mimicking legitimate IT administration operations.

**☑️ Recommendation 1**: Immediately audit endpoints for unauthorized instances of remote management software (specifically MSP360 and ScreenConnect binaries) and inspect environment logs for unapproved RMM installations.

**☑️ Recommendation 2**: Implement Attack Surface Reduction (ASR) rules and process creation blocks for commands originating from PsExec and WMI to disrupt post-compromise lateral movement.

**☑️ Recommendation 3**: Establish application control policies (WDAC/AppLocker) to restrict unvetted RMM usage and continuously monitor for anomalous remote access connections originating from non-corporate IP ranges.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/09/29/phishing-abuses-rmm-tools-persistent-access/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-huning-queries.kql`: List of Microsoft Defender/Sentinel threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
