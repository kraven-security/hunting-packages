# New ClickFix Phishing Attack Unleashes Havoc C2 via Microsoft SharePoint

A slick ClickFix phishing campaign is tricking users into running malicious PowerShell scripts, deploying the Havoc C2 framework through Microsoft SharePoint. Blending into legit traffic with Microsoft Graph API, this attack’s a stealthy beast.

Key takeaways:

🕵️‍♂️ Phishing Lure: A new ClickFix campaign kicks off with phishing emails sporting an HTML attachment (“Documents.html”) that fakes an error, duping users into copying and running a malicious PowerShell command.

📂 SharePoint Hideout: The attack fetches a PowerShell script from an attacker-controlled SharePoint site, then grabs a Python script to load Havoc, an open-source C2 framework, as a sneaky DLL.

🔗 Stealthy Comms: Using Microsoft Graph API, Havoc masks its command-and-control traffic within SharePoint’s legit functions, making it a nightmare to spot amid trusted services.

💻 Full Control: Once deployed, Havoc gives attackers remote access to compromised systems, rivaling tools like Cobalt Strike—Fortinet flagged this crafty multi-stage assault.

🛡️ Stay Sharp: Users should dodge unknown email attachments and orgs must monitor SharePoint for odd activity to block this growing ClickFix threat.

🔗 https://buff.ly/WN4sgcm

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
