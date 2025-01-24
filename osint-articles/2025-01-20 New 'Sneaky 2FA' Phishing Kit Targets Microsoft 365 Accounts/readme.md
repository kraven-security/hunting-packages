# New 'Sneaky 2FA' Phishing Kit Targets Microsoft 365 Accounts

A new phishing-as-a-service, dubbed 'Sneaky 2FA', is making waves by bypassing Microsoft 365's two-factor authentication. Cybersecurity firm Sekoia warns of its sophisticated use of QR codes to trick users into providing their credentials.

Key takeaways:

🔒 2FA Bypass: Sneaky 2FA is designed to circumvent two-factor authentication for Microsoft 365, making it particularly dangerous for enterprise users.

⚡ Targeted Attack: This phishing kit primarily targets Microsoft 365 accounts, exploiting user trust in QR codes to gain unauthorized access.

🚨 Detection: Nearly 100 domains hosting Sneaky 2FA phishing pages have been identified, with the threat being active since December, according to cybersecurity posts on X.

📱 QR Code Phishing: The kit uses QR codes in emails, leading to fake login pages where both credentials and 2FA codes are captured.

🛡️ Security Measures: Users and organizations are urged to be vigilant about unsolicited QR codes and to verify the authenticity of login requests to prevent falling victim to this new threat.

🔗 https://buff.ly/40qpjjc 

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `ips.txt`: List of Internet Protocol (IP) addresses in the article.
- `domains.txt`: List of domains in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
