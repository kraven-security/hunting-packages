# Hackers Leverage AWS Misconfigurations for Phishing via SES and WorkMail

Hackers are exploiting AWS misconfigs to launch phishing attacks through SES and WorkMail, bypassing email defenses with stolen access keys. Palo Alto Networks’ Unit 42 tracks this sneaky campaign—secure your AWS setup before you’re hit!

Key takeaways:

🕵️‍♂️ Phishing Pivot: The JavaGhost group (aka TGR-UNK-0011), active since 2019, shifted from website defacing to phishing in 2022, now targeting AWS environments to send scams via Amazon SES and WorkMail.

🔓 Misconfig Exploit: Attackers snag exposed long-term IAM access keys via the AWS CLI, using legit services to dodge email filters—there is no AWS vulnerability here; sloppy user configs are to blame.

📧 Stealthy Delivery: By abusing SES and WorkMail, phishing emails slip past defenses since they come from trusted AWS domains, often hitting users who’ve seen prior legit traffic.

🌍 Wide Threat: Unit 42 spotted this in March 2025, warning orgs to lock down IAM keys and monitor SES usage as JavaGhost ramps up financial gain schemes.

🛡️ Lock It Down: AWS offers tools like Secrets Manager to avoid key leaks. To stop this in its tracks, admins need to audit configs and ditch hardcoded credentials.

🔗 https://buff.ly/5NuqvS9

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `aws-iam-iocs.txt`: List of AWS IAM usernames used.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
