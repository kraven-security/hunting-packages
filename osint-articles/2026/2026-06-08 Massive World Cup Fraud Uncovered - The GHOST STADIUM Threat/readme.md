# Massive World Cup Fraud Uncovered: The GHOST STADIUM Threat 

Group-IB has uncovered GHOST STADIUM, a massive cyber fraud campaign targeting 2026 FIFA World Cup fans through sophisticated phishing, credential theft, and fake ticket sales that could cause billions in losses.

Key takeaways:

**🎯 Target**: Global football fans and attendees of the 2026 FIFA World Cup, specifically targeted for credential theft, fake merchandise, and fraudulent ticket sales.

**💡 Insight**: GHOST STADIUM utilizes a pixel-perfect clone of FIFA's official PingIdentity SSO login flow. The phishing kit not only harvests credentials but also exploits password reset parameters to immediately lock legitimate users out of their accounts, operating seamlessly across 11 different languages to maximize its global conversion rate.

**☑️ Recommendation 1**: Users must exclusively use the official FIFA website or explicitly authorized partners to purchase tickets, hospitality packages, and merchandise. Always type the web address manually rather than clicking email or social media links.

**☑️ Recommendation 2**: Event organizers and targeted brands should deploy proactive Digital Risk Protection (DRP) solutions to continuously scan for newly registered spoofed domains, fake social media accounts, and unauthorized logo usage to initiate rapid takedowns.

**☑️ Recommendation 3**: Organizations must integrate specialized threat intelligence (TI) into their security architecture. Tracking the infrastructure of cybercrime supply chains, like the Phishing-as-a-Service operations used by GHOST STADIUM, allows security teams to block malicious indicators of compromise (IoCs) before active campaigns launch. 

🔗 [Source](https://www.group-ib.com/blog/ghost-stadium-football-fraud/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
