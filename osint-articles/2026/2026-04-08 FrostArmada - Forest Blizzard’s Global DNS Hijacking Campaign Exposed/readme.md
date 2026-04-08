# FrostArmada: Forest Blizzard’s Global DNS Hijacking Campaign Exposed

Lumen’s Black Lotus Labs has uncovered "FrostArmada," a global espionage campaign by Russia-linked APT28 (Forest Blizzard) that hijacks SOHO routers to steal sensitive credentials. By compromising over 18,000 devices, the group redirects authentication traffic to malicious infrastructure, enabling "Attacker-in-the-Middle" (AitM) strikes at scale.

Key takeaways:

🛰️ SOHO Routers as Proxies: The campaign exploits MikroTik and TP-Link routers to create a global malicious network that redirects DNS traffic from victims in 120 countries.

🎭 Sophisticated AitM Tactics: Attackers modify DNS settings to point to malicious resolvers, funneling login attempts to proxy servers that can intercept both passwords and MFA session tokens.

🔓 Token & Credential Theft: The primary goal is persistent access; by "breaking and inspecting" traffic, Forest Blizzard exfiltrates OAuth tokens and NTLM hashes from government and enterprise targets.

🛡️ Harden Your Perimeter: Organizations must prioritize patching edge devices, disabling remote admin interfaces, and transitioning to phishing-resistant MFA (like FIDO2) to mitigate these nearly invisible redirections.

🔗 [Source](https://www.lumen.com/blog-and-news/en-us/frostarmada-forest-blizzard-dns-hijacking)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
