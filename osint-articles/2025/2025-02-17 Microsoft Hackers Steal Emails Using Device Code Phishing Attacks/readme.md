# Microsoft: Hackers Steal Emails Using Device Code Phishing Attacks

Microsoft has identified a new phishing tactic where hackers use device code phishing to hijack Microsoft 365 accounts, steal emails, and gain access to cloud services. This attack is attributed to Storm-2372, potentially linked to Russian interests.

Key takeaways:

🔓 Device Code Phishing: Hackers trick users into authenticating with a device code, granting access to their Microsoft 365 accounts.

📧 Email Theft: This method allows attackers to read emails and infiltrate corporate networks without passwords.

🇷🇺 Suspected Russian Link: Microsoft suggests medium confidence that Storm-2372 aligns with Russian state interests.

🛡️ Mitigation: Microsoft recommends blocking device code flow where possible and enforcing Conditional Access policies.

🚨 Active Campaign: The threat targets individuals in organizations of interest, emphasizing the need for vigilance.

🔗 https://buff.ly/3Qn490u

## Package Content

- `kql-queries.txt`: List of KQL detection queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
