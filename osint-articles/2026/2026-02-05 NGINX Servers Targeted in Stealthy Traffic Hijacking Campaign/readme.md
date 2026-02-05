# NGINX Servers Targeted in Stealthy Traffic Hijacking Campaign

Threat actors are silently compromising NGINX configurations to redirect user traffic through malicious backend infrastructure, effectively creating a persistent Man-in-the-Middle (MitM) environment. This campaign specifically targets high-value government and educational sectors, leveraging legitimate server directives to evade traditional detection.

Key takeaways:

🕵️ Invisible Redirection: Attackers inject malicious location blocks and proxy_pass directives into NGINX config files, rerouting traffic through attacker-owned domains while preserving original headers to maintain the appearance of legitimacy.

🎯 High-Profile Targets: The campaign has been observed focusing on .gov and .edu domains, alongside specific regional TLDs, indicating a strategic interest in sensitive institutional data and credentials.

⚙️ Automated Malicious Toolkit: A sophisticated 5-stage scripted toolkit automates the entire process—from enumerating configuration files to validating changes with nginx -t—ensuring the server remains operational and "healthy" while compromised.

🔍 Evasion of Security Tools: Because the attack abuses standard NGINX features rather than exploiting a software bug, it often bypasses automated security scanners that are not specifically looking for unauthorized configuration drift.

🛡️ Actionable Defense: Web administrators should immediately implement File Integrity Monitoring (FIM) for /etc/nginx/ and audit configurations for unauthorized proxy_pass entries. Additionally, ensure hosting management panels like Baota are secured with robust MFA.

🔗 [Source](https://securitylabs.datadoghq.com/articles/web-traffic-hijacking-nginx-configuration-malicious/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. Only network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
