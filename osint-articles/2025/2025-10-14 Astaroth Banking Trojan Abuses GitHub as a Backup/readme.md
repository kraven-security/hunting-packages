# Astaroth Banking Trojan Abuses GitHub as a Backup

The Astaroth banking trojan has been updated to use GitHub as a resilient backup for its command-and-control infrastructure. This allows the malware to remain operational even if its primary C2 servers are taken down.

Key takeaways:

🔒 Resilient Infrastructure: By hosting its configurations on GitHub, Astaroth ensures it can continue its malicious activities even after a partial takedown.

🛡️ Targeted Attacks: The campaign is primarily focused on Brazil and other Latin American countries.

💡 Phishing as the Entry Point: The attack begins with a phishing email that tricks users into downloading a malicious file.

🌐 Credential Theft: The malware uses keylogging to steal credentials from banking and cryptocurrency websites.

🔗 [Source](https://www.mcafee.com/blogs/other-blogs/mcafee-labs/astaroth-banking-trojan-abusing-github-for-resilience/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
