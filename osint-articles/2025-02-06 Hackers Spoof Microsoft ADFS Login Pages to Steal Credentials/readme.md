# Hackers Spoof Microsoft ADFS Login Pages to Steal Credentials

Hackers are using sophisticated phishing campaigns to mimic Microsoft ADFS login pages, tricking users into entering their credentials and bypassing multi-factor authentication. Over 150 organizations have been targeted, primarily in education, healthcare, and government

Key takeaways:

🕵️‍♂️ Phishing Campaign: A global phishing operation is using fake Microsoft Active Directory Federation Services (ADFS) login pages to steal user credentials.

🔓 MFA Bypass: This attack notably bypasses multi-factor authentication (MFA) by capturing login details and secondary authentication methods.

🌐 Targeted Sectors: Education, healthcare, and government sectors are the primary victims, with more than 150 organizations affected.

📧 Phishing Technique: Phishing emails mimic IT notifications, urging users to visit a fraudulent login page that looks identical to the legitimate one.

🛡️ Security Recommendations: Organizations are advised to migrate to more secure identity platforms like Microsoft Entra ID, shorten session token lifetimes, and educate users on phishing signs.

🔗 https://buff.ly/3Q74LY8

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `ips.txt`: List of malicious IP addresses in the article.
- `email.txt`: List of malicious email IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
