# ClickFix Phishing Campaign Targets Hospitality Sector with Fake Booking.com Emails

A new ClickFix phishing campaign is targeting the hospitality sector with fake Booking.com emails. The campaign tricks users into installing InfoStealers and RATs like Lumma and VenomRAT. Microsoft warns that this Storm-1865 attack uses fake CAPTCHAs to deliver malware.

Key takeaways:

🕵️‍♂️ Phishing Surge: Microsoft identified a ClickFix campaign by Storm-1865 that has been targeting hospitality workers globally since December 2024. The campaign uses fake Booking.com emails about guest reviews to lure victims.

📧 Fake CAPTCHA Trap: The emails lead to fraudulent CAPTCHA pages that trick users into running malicious PowerShell commands, delivering malware like Lumma, VenomRAT, and AsyncRAT.

💻 Malware Impact: These payloads steal financial data and credentials, with RATs granting attackers remote access, aiming for fraud and theft across regions like North America and Europe.

🌍 Targeted Regions: The attack spans hospitality orgs in North America, Oceania, South/Southeast Asia, and Europe, exploiting trust in Booking.com’s brand.

🛡️ Stay Safe: Verify email senders, avoid clicking unknown links, and don’t run unsolicited commands to dodge this social engineering scam.

🔗 https://buff.ly/a9rqtDI

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-hunting-queries.txt`: Threat hunting queries to detect malicious activity.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
