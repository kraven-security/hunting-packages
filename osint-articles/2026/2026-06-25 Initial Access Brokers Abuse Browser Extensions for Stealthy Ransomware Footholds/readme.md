# Initial Access Brokers Abuse Browser Extensions for Stealthy Ransomware Footholds 

Zscaler ThreatLabz has exposed an innovative malware framework named "Edgecution" being deployed by an initial access broker connected to the Payouts King ransomware group. The campaign relies on social engineering to trick victims into installing a malicious Microsoft Edge browser extension that operates completely hidden from the user, thereby establishing a persistent foothold.

Key takeaways

**🎯 Target**: Corporate networks and enterprise users, specifically targeting employees through deceptive Microsoft Teams messages that impersonate internal IT helpdesk staff.

**💡 Insight**: The Edgecution malware bypasses standard browser sandbox security restrictions by exploiting the Chrome native messaging protocol. It runs a malicious extension in a hidden, headless Microsoft Edge browser window, allowing it to seamlessly relay privileged commands to a host-side Python backdoor, enabling it to manipulate files and execute arbitrary code without alerting the user.

**☑️ Recommendation 1**: Enforce centralized group policies that strictly restrict browser extension installations, preventing users from sideloading extensions or running unapproved local scripts. Additionally, establish a mandatory verification process for any IT-related update requests received via messaging applications such as Microsoft Teams.

**☑️ Recommendation 2**: Implement behavior-based Endpoint Detection and Response (EDR) controls configured to flag headless browser operations, unexpected Python executions, and unauthorized modifications to the Windows registry concerning native messaging hosts.

🔗 [Source](https://www.zscaler.com/blogs/security-research/payouts-king-ransomware-initial-access-broker-deploys-new-edgecution)

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
