# Neglected Domains Fuel Malspam to Bypass Email Security Measures

Cybercriminals are exploiting old, neglected domains to evade SPF and DMARC protections, successfully sending malspam. These tactics allow attackers to impersonate legitimate senders, making phishing emails appear more credible to bypass email security filters.

Key takeaways:

📨 Malspam Campaigns: Bad actors are using neglected domains to spoof emails, aiming to bypass email security like SPF and DMARC.

🔒 Security Evasion: By using outdated domains, these emails are less likely to be flagged as spam due to the domains' age, which is often used as a trust factor in security checks.

🕵️‍♂️ Threat Actors: Groups like Muddling Meerkat have been noted for abusing such domains, particularly those that haven't hosted content for nearly two decades.

💼 Impersonation: The malspam often impersonates reputable brands like Amazon, Mastercard, and SMBC to trick users into phishing traps.

💰 Extortion Spam: Some campaigns involve extortion emails demanding Bitcoin payments to prevent the alleged release of compromising videos supposedly captured via malware.

🔗 https://buff.ly/4j4VDjT

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `email-addesses.txt`: List of email addresses in the article.
- `ips.txt`: List of Intenet Protocol addresses in the article.
- `domains.txt`: List of domains in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
