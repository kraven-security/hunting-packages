# Ransomware Gangs are Turning Your Monitoring Tools Against You

The 'Crazy' ransomware group has been caught abusing legitimate employee monitoring software, such as ActivTrak, to spy on victims and maintain stealthy persistence. By blending in with standard business operations, these attackers can monitor high-value targets and prepare for encryption without raising immediate red flags.

Key takeaways:

🚨 Living off the Land: Attackers are repurposing legitimate productivity and monitoring tools to bypass EDR/AV solutions that typically trust these signed applications, making detection significantly harder.

🔒 Stealthy Surveillance: By deploying these tools, the "Crazy" gang can track user behavior and identify sensitive data in real-time, allowing them to time their final strike for maximum leverage.

🛡️ Tighten Application Control: Organizations must implement strict application whitelisting and treat the unauthorized presence of Remote Management and Monitoring (RMM) tools as a high-severity security incident.

💡 Audit Your "Normal": Security teams should actively monitor for anomalies in administrative traffic, as the use of legitimate software is often the final precursor to a full-scale ransomware deployment.

🔗 [Source](https://www.huntress.com/blog/employee-monitoring-simplehelp-abused-in-ransomware-operations)

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
