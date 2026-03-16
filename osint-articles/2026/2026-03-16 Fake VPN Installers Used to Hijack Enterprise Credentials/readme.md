# Fake VPN Installers Used to Hijack Enterprise Credentials

Threat actors are increasingly using "malvertising" and SEO poisoning to trick employees into downloading malicious clones of popular VPN software like Cisco AnyConnect and Fortinet. These fake installers deploy infostealers designed to harvest corporate credentials and bypass MFA by stealing active session cookies.

Key takeaways:

🚨 Search Engine Sabotage: Attackers are buying ad space to place malicious download links at the top of search results, leading users to pixel-perfect replicas of official software pages.

🔒 Targeting Corporate Access: By mimicking trusted enterprise tools, hackers gain a direct foothold in your network by stealing login credentials and session tokens directly from employees' browsers.

🌐 Sophisticated Impersonation: This campaign specifically targets high-value users by cloning the look and feel of software from vendors like Cisco, Fortinet, and Palo Alto Networks.

🛡️ Enforce Verified Portals: The best defense is a "Managed Software" approach—ensure employees only install tools via your company's official IT portal or MDM, never from a random search result.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/03/12/storm-2561-uses-seo-poisoning-to-distribute-fake-vpn-clients-for-credential-theft/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `microsoft-threat-hunting-queries.txt`: List of Microsoft Defender XDR advanced threat hunting queries associated with the threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
