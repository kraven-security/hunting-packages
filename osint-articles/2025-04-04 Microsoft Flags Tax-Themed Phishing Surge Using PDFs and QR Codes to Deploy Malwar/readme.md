# Microsoft Flags Tax-Themed Phishing Surge Using PDFs and QR Codes to Deploy Malware

Microsoft warns of a tax season phishing wave that will hit 2,300+ US firms with PDFs and QR codes, delivering malware like Remcos RAT and stealing credentials via RaccoonO365. The peak of these attacks occurred in February 2025, but they are ongoing. Stay sharp and avoid suspicious links!

Key takeaways:

📧 Tax-Season Trap: In February 2025, Microsoft spotted tax-themed phishing emails targeting over 2,300 US organizations. These emails used PDFs with QR codes and malicious links to snag credentials and drop malware.

🦠 Malware Mix: Campaigns wield RaccoonO365 phishing kits, plus RATs like Remcos, and tools like Latrodectus and BruteRatel C4, exploiting trust in tax-related lures.

🇺🇸 Targeted Surge: One wave hit the engineering and IT sectors with fake Microsoft 365 login pages, while another used Excel macros to deploy AHKBot for screenshot theft.

🛡️ Evasion Tactics: Attackers lean on URL shorteners, file-hosting services, and CAPTCHA pages to slip past defenses, peaking ahead of the April 15 tax deadline.

🔗 https://buff.ly/6kPgAmW

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-hunting-queries.txt`: List of KQL threat hunting queries for Microsoft Sentinel SIEM.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
