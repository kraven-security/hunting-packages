# Luna Moth Extortion Group Targets US Firms with Fake IT Help Desk Scam

The Luna Moth extortion group, also known as the Silent Ransom Group, targets US legal and financial firms with callback phishing. It poses as an IT help desk to trick victims into installing RMM tools. This malware-free attack steals sensitive data for extortion, demanding up to $800,000 in ransoms.

Key takeaways:

🕵️‍♂️ Callback Phishing Scam: Luna Moth, aka Silent Ransom Group, uses fake IT help desk calls to deceive employees at US legal and financial firms into installing legitimate remote monitoring and management (RMM) tools, granting attackers network access.

📞 Social Engineering Tactics: Attackers leverage GoDaddy infrastructure and Reamaze AI chatbots to pose as trusted IT staff, guiding victims to download RMM software from fraudulent sites, which security tools often fail to flag.

💾 Data Theft and Extortion: Once inside, attackers use tools like WinSCP and Rclone to exfiltrate sensitive data, demanding ransoms as high as $800,000 to prevent leaks, with no malware involved for stealth.

🏦 Targeted Industries: The campaign focuses on high-value targets like law firms and financial institutions, where data breaches cause significant reputational and financial damage, amplifying extortion leverage.

🛡️ Defense Recommendations: Firms should train staff to verify IT support calls, monitor RMM tool usage, and deploy endpoint detection to spot unauthorized access and data transfers.

🔗 https://buff.ly/IfbhrCC

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `mitre-ttps.txt`: MITRE ATT&CK tactics, techniques, and procedures in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
