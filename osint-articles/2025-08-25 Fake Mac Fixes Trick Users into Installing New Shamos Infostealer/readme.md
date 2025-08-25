# Fake Mac Fixes Trick Users into Installing New Shamos Infostealer

A new macOS infostealer, "Shamos," is being distributed through deceptive online ads that mimic legitimate websites. Unsuspecting users are tricked into running a malicious command, thinking they are installing a software fix, which then deploys the Shamos malware to steal sensitive information.

Key takeaways:

🔒 Be cautious of online ads, especially those for software downloads or system fixes. Always verify the URL and legitimacy of the website before downloading or installing anything.

🚨 Shamos is a potent infostealer that can harvest credentials, browser data, and cryptocurrency wallets. The financial and privacy risks are significant.

💡 This campaign highlights the increasing trend of malvertising, where cybercriminals use legitimate advertising platforms to distribute malware.

🛡️ To protect yourself, use a reputable ad-blocker, enable multi-factor authentication on all your accounts, and keep your operating system and software updated.

🌐 Always download software from the official source or trusted app stores. Avoid running commands from unfamiliar websites, especially those that require administrative privileges.

🔗 [Source](https://www.crowdstrike.com/en-us/blog/falcon-prevents-cookie-spider-shamos-delivery-macos/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `crowdstrike-hunting-queries.txt`: List of CrowdStrike Falcon threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
