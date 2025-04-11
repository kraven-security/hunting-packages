# U.S. Toll Road Smishing Scams: A Growing Threat to Drivers Nationwide

Since October 2024, smishing scams impersonating U.S. toll road services like E-ZPass have targeted drivers across multiple states, stealing financial data. Cisco Talos links these attacks to multiple threat actors using sophisticated phishing kits sold online.

Key takeaways:

📱 Cisco Talos reports a widespread SMS phishing (smishing) campaign that began in October 2024. The campaign targets toll road users in at least eight U.S. states, including Florida, Texas, and Ohio, with fake payment demands.

💰 The scams, likely run by multiple financially motivated actors, use phishing kits sold by "Wang Duo Yu" on Telegram, designed to steal credit card details and personal information through convincing spoofed toll service websites.

🔗 These kits, priced as low as $20-$50, target large entities like toll operators and banks. Thousands of fraudulent domains mimic services such as E-ZPass and EZDriveMA to trick users.

🛡️ Talos recommends verifying toll payment requests directly via official websites and avoiding unsolicited text links, while Cisco’s security tools can help detect and block related malicious activity.

🔗 https://buff.ly/gHu4OjP

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
