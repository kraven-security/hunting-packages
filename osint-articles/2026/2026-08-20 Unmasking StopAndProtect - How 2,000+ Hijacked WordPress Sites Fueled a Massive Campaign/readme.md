# Unmasking StopAndProtect: How 2,000+ Hijacked WordPress Sites Fueled a Massive Campaign 

Check Point Research uncovered "StopAndProtect," an operation leveraging thousands of hacked WordPress sites for command-and-control, payload delivery, and exfiltration. ClickFix lures deploy malware that can steal data and encrypt it.

Key takeaways

**🎯 Target**: Web users tricked by fake verification prompts (over 6,000 victim IPs impacted globally, primarily across the US, Russia, and India) as well as unpatched WordPress website owners whose servers were co-opted into the attack infrastructure.

**💡 Insight**: The campaign relies on ClickFix tactics to trick visitors into executing malicious PowerShell commands, but critical operational security (OPSEC) failures by the threat actor inadvertently exposed directory listings containing 31,000+ stolen screenshots, victim logs, and the source code for their site-management tools.

**☑️ Recommendation 1**: WordPress administrators must immediately update core software, plugins, and themes, while specifically inspecting `wp-content/mu-plugins` for unauthorized or hidden backdoor scripts.

**☑️ Recommendation 2**: Train end-users to recognize ClickFix social engineering lures, establishing strict protocols against pasting or executing PowerShell commands prompted by web verification screens or fake CAPTCHAs.

**☑️ Recommendation 3**: Enforce endpoint security policies that restrict unprivileged user-level PowerShell execution, and deploy Web Application Firewalls (WAF) to detect and block unauthorized file uploads to web servers.

🔗 [Source](https://research.checkpoint.com/2026/thousands-of-hacked-wordpress-sites-one-operation-unmasking-stopandprotect/)

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
