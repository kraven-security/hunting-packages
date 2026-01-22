# Don't Fall for the New LastPass "Maintenance" Phishing Scam

LastPass has issued an urgent advisory regarding a sophisticated phishing campaign targeting its users with fraudulent "scheduled maintenance" notifications. These deceptive emails aim to steal Master Passwords and gain unauthorized access to encrypted user vaults by creating a false sense of urgency.

Key takeaways

🚨 Sophisticated Social Engineering: Attackers are deploying high-quality emails that perfectly mimic official LastPass branding to trick even tech-savvy users.

💡 The "Maintenance" Trap: The scam claims your account requires "re-synchronization" or "update verification" due to a backend system migration.

🔍 Credential Harvesting: Clicking the "Login" button leads to a pixel-perfect replica of the LastPass sign-in page designed to capture your Master Password and 2FA codes in real-time.

🛡️ Verify the Source: Always navigate directly to the official website (lastpass.com) or use your trusted browser extension rather than clicking links embedded in emails.

🔒 Zero-Trust Policy: Remember, legitimate password manager services will never ask you to provide your Master Password through an email link or a support ticket.

🔗 [Source](https://blog.lastpass.com/posts/new-phishing-campaign-targeting-lastpass-customers)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `email-addresses.txt`: List of malicious emails addreses in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
