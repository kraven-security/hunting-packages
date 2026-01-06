# Sophisticated Phishing Campaign Targets CFOs with Fake Recruiter Emails Using NetBird Tool

A new spear-phishing campaign targets CFOs globally, using fake recruiter emails from "Rothschild & Co." to deploy the legitimate NetBird tool for unauthorized access. The multi-stage attack evades detection by utilizing CAPTCHA-protected links and malicious scripts, emphasizing the need for immediate vigilance.

Key takeaways:

📧 Phishing Lure: Detected in mid-May 2025, the campaign uses emails impersonating Rothschild & Co. recruiters, offering "strategic opportunities" to trick CFOs and financial executives into clicking malicious links disguised as PDF attachments.

🕵️ Multi-Stage Attack: The attack redirects victims to a Firebase-hosted URL after solving a CAPTCHA, which triggers a JavaScript function to decrypt and deliver a ZIP file containing a Visual Basic Script (VBS) that installs NetBird and OpenSSH for remote access.

🔧 Legitimate Tool Abuse: Attackers leverage NetBird, a legitimate WireGuard-based remote access tool, and OpenSSH to create hidden admin accounts and enable encrypted RDP access, bypassing traditional security measures.

🌍 Global Reach: The campaign targets financial sectors across Europe, Africa, Canada, the Middle East, and South Asia, exploiting plug-and-play phishing kits like Haozi to lower the skill barrier for attackers.

🛡️ Defense Recommendations: Organizations should treat unsolicited recruitment emails with skepticism, monitor for suspicious script executions (e.g., PowerShell, WScript), audit MSIExec activity, and deploy EDR solutions to detect and block such attacks.

🔗 https://buff.ly/nYtVf87

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `mitre-ttps.txt`: MITRE ATT&CK tactics, techniques, and procedures in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
