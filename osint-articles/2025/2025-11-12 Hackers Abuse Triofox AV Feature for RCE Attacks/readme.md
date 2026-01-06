# Hackers Abuse Triofox AV Feature for RCE Attacks

Threat actors exploited a critical auth bypass flaw (CVE-2025-12480) in Gladinet's Triofox platform to abuse its built-in antivirus feature, allowing them to achieve remote code execution with SYSTEM-level privileges.

Key takeaways:

🚨 Critical Flaw: The vulnerability stemmed from an access control gap where admin access was granted if the request URL host was spoofed to 'localhost' via the HTTP Host header.

🛠️ Weaponized Feature: Attackers exploited this flaw to access setup pages, create a new admin account, and then configure the platform's antivirus scanner to run a malicious script.

🛡️ Privilege Escalation: The "antivirus" script inherited SYSTEM privileges from the parent Triofox process, enabling the attackers to deploy remote access tools like Zoho Assist and AnyDesk.

🌐 Lateral Movement: Post-exploitation, the threat actors used Plink and PuTTY to create SSH tunnels, forwarding traffic to the compromised host's RDP port for further network movement.

💡 Action Required: Administrators are urged to update to Triofox version 16.10.10408.56683 or later, audit admin accounts, and verify that the AV engine is not configured to run unauthorized scripts.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/triofox-vulnerability-cve-2025-12480)

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
