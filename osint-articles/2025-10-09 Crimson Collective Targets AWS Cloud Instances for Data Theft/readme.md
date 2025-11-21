# "Crimson Collective" Targets AWS Cloud Instances for Data Theft

The hacking group "Crimson Collective" is actively targeting Amazon Web Services (AWS) cloud environments to steal data and extort companies. The group, which recently claimed responsibility for the Red Hat breach, uses open-source tools to find exposed credentials and then escalates privileges to gain full control of the targeted AWS environment.

Key takeaways:

🔒 Exposed Credentials are the Entry Point: The attackers' primary method is finding exposed long-term AWS access keys.

🛡️ Privilege Escalation: Once inside, they create new admin accounts to gain complete control over the victim's cloud infrastructure.

💡 Data Exfiltration: The group systematically identifies and exfiltrates valuable data from various AWS services, such as RDS and EBS.

🌐 Extortion and Collaboration: After stealing the data, the group uses the compromised AWS email service to send extortion demands and has even partnered with other hacking groups to increase pressure.

🔗 [Source](https://www.rapid7.com/blog/post/tr-crimson-collective-a-new-threat-group-observed-operating-in-the-cloud/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
