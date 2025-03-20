# Dragon RaaS: Pro-Russian Hacktivists Leverage Five Families Legacy in Cybercrime Push

Dragon RaaS, a pro-Russian hacktivist group, is building on the "Five Families" cybercrime syndicate’s rep with small-scale attacks and bold branding. SentinelOne tracks their evolution from Stormous roots, exploiting misconfigurations and stolen credentials.

Key takeaways:

🕵️‍♂️ Origins Traced: Dragon RaaS, emerging in July 2024 as an offshoot of the pro-Russian "Five Families" (Stormous, ThreatSec, GhostSec, Blackforums, SiegedSec), blends hacktivism with cybercrime, targeting the U.S., U.K., France, Germany, and Israel.

🔓 Attack Style: Known for opportunistic hits, they use misconfigurations, brute-force attacks, and stolen credentials to deploy defacements and modified StormCry ransomware, favoring smaller, weaker targets over big extortion plays.

💻 Tech Roots: Their payloads tweak existing PHP code and StormCry encryptors, showing reliance on commodity tools rather than bespoke ransomware. This keeps operations agile but less sophisticated.

🌍 Global Ambitions: Launched via Telegram, Dragon RaaS markets itself as a slick RaaS platform, echoing the Five Families’ volatile, dynamic nature—SentinelOne notes their focus on public-facing app vulnerabilities.

🛡️ Defender’s Edge: Harden sites (WordPress, cPanel, MySQL), apply patches, and secure credentials to block these low-skill attackers. Basic hygiene can thwart their noisy but limited campaigns.

🔗 https://buff.ly/mpqD9QL

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `btc-addresses.txt`: List of BTC wallet addresses associated with the threat actor.
- `telegram-ids.txt`: List of Telegram IDs associated with the threat actor.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
