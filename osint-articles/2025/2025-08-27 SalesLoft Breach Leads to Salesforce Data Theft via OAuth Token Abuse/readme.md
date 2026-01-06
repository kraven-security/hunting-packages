# SalesLoft Breach Leads to Salesforce Data Theft via OAuth Token Abuse

A significant security incident has seen the sales engagement platform SalesLoft breached, with attackers stealing OAuth tokens to gain unauthorized access to customers' Salesforce accounts. This sophisticated supply chain attack highlights the critical need for robust third-party application security.

Key takeaways:

🔒 OAuth Token Theft: Attackers compromised SalesLoft to steal OAuth tokens associated with the Drift AI chat agent. These tokens were then used to pivot and access the Salesforce instances of SalesLoft's customers.

🚨 Widespread Impact: The breach has potentially impacted over 700 organizations, with attackers automating the data theft process to exfiltrate large volumes of sensitive information from Salesforce.

💡 Focus on Credentials: The primary goal of the attackers appears to be credential harvesting. After gaining access, they searched for sensitive information like AWS keys and Snowflake access tokens, indicating intent for further attacks.

🛡️ Third-Party Risk: This incident underscores the inherent risks associated with third-party integrations. Even if your direct security is strong, a vulnerability in a connected application can provide a gateway for attackers.

🌐 Immediate Action Required: SalesLoft and Salesforce have revoked all active Drift tokens. If you use this integration, it is crucial to re-authenticate your Salesforce connection and review your logs for any signs of unauthorized access or data exfiltration.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/data-theft-salesforce-instances-via-salesloft-drift?e=48754805)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-user-agents.txt`: List of malicious User Agent strings seen in the attacks.
  
<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
