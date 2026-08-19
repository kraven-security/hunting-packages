# Python Implant Hides C2 Traffic Inside Microsoft 365 and Azure 

Discovered by Ontinue, TWINLOOT is a Python malware framework that hides command-and-control operations inside Microsoft services like SharePoint, Teams, and Edge. It authenticates via an attacker-controlled Azure tenant to avoid local logging and employs a novel offline persistence mechanism called "Corrupting the Hive Mind."

Key takeaways:

**🎯 Target**: Enterprise organizations utilizing Microsoft 365 and Azure environments, where defenders are traditionally trained to treat Microsoft traffic as safe by default.

**💡 Insight**: The malware's defining feature is its ability to route all C2 traffic through legitimate Microsoft infrastructure, using SharePoint for dead drops and Teams' TURN servers for reverse tunnels, leaving no trace in the victim's Entra ID logs and bypassing traditional signature-based detection tools.

**☑️ Recommendation 1**: Shift detection strategies to hunt for anomalous behavioral patterns in SharePoint, Teams, and Microsoft Graph API activity rather than relying solely on standard malware signatures.

**☑️ Recommendation 2**: Disable headless mode for Microsoft Edge across your organization and implement strict monitoring for unusual Python executions or unauthorized Graph API calls originating from the browser.

**☑️ Recommendation 3**: Proactively reset exposed credentials and enforce phishing-resistant multi-factor authentication (MFA) to prevent lateral movement and unauthorized Azure tenant access.

🔗 [Source](https://www.reco.ai/blog/city-forum-campaign-salesforce-servicenow)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
