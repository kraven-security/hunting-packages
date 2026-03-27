# New Phishing Wave Targets TikTok for Business Accounts

A sophisticated phishing campaign is currently impersonating TikTok Support to hijack high-value business and creator accounts. Attackers use deceptive "policy violation" warnings to lure users into providing credentials or scanning malicious QR codes.

Key takeaways:

🚨 Policy Fear-Mongering: The attack starts with urgent emails claiming "trademark infringement," pressuring users to act quickly to avoid account suspension, a classic social engineering tactic designed to bypass critical thinking.

🔗 Look-alike Domains: Scammers direct victims to highly convincing fake support portals designed to harvest credentials and session cookies, which can enable account takeover even if multi-factor authentication is active.

🤳 QR Code Risks: Some variations of this campaign use QR codes to redirect mobile users to phishing sites, a technique known as "quishing" that often bypasses traditional email security filters.

🛡️ Verification is Vital: Always verify your account status directly through the official TikTok app or Business Suite. Never click links or download attachments from unexpected emails regarding "legal issues" or "copyright claims."

🔗 [Source](https://pushsecurity.com/blog/tiktok-phishing)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
