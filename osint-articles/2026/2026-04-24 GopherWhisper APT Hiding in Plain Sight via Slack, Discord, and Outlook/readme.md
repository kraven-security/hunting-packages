# GopherWhisper APT Hiding in Plain Sight via Slack, Discord, and Outlook

GopherWhisper, a China-linked actor, uses a Go-based toolkit to turn enterprise tools like Slack and Outlook into covert C2 channels, bypassing defenses to maintain persistence.

Key takeaways

🎯 Target: Primarily government entities and financial institutions, with a significant concentration of activity observed in Mongolia and across various global sectors.

💡 Insight: This campaign uses "Living-off-Trusted-Services" (LoTS) tactics, in which malicious traffic is disguised as routine business activity, such as modifying "Draft" emails in Outlook or sending API requests to Slack, making it nearly indistinguishable from legitimate corporate communications.

☑️ Recommendation 1: (Short-term) Conduct a retroactive audit of Microsoft Graph API logs for unusual "Draft" folder activity or unauthorized API integrations that do not align with established business workflows.

☑️ Recommendation 2: (Short-term) Update EDR/XDR signatures to detect the "LaxGopher" and "RatGopher" malware families and monitor for Go-compiled binaries executing unauthorized network connections to cloud service endpoints.

☑️ Recommendation 3: (Long-term) Implement a strict "Zero Trust" model for application-to-cloud communication, utilizing deep packet inspection (DPI) to validate that traffic to services like Discord or GitHub is tied to a verified business process.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/gopherwhisper-burrow-full-malware/)

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
