# New Microsoft Teams Phishing Campaign Deploys Persistent Backdoors

Threat actors are increasingly exploiting the inherent trust of collaboration platforms to impersonate IT support and trick employees into granting remote access via Quick Assist. This sophisticated attack chain bypasses traditional email filters to deploy the "A0Backdoor," giving attackers a permanent foothold in corporate networks.

Key takeaways

🎭 The "Spam-to-Support" Tactic: Attackers overwhelm targets with junk notifications before posing as a helpful IT technician on Teams to "resolve" the fake issue—a classic psychological play to lower defenses.

🛠️ Abusing Legitimate Tools: By weaponizing Microsoft’s own Quick Assist tool, hackers can take full control of a system without triggering standard malware alerts that look for malicious file downloads.

🦠 Stealthy Communication: The deployed A0Backdoor uses specialized DNS MX queries for its command-and-control (C2) traffic, making it incredibly difficult for standard network monitoring tools to detect the breach.

🛡️ Actionable Defense: Organizations should enforce "out-of-band" verification for all remote support requests and evaluate whether to restrict or disable Quick Assist via Group Policy to prevent unauthorized sessions.

🔗 [Source](https://www.bluevoyant.com/blog/new-a0backdoor-linked-to-teams-impersonation-and-quick-assist-social-engineering)

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
