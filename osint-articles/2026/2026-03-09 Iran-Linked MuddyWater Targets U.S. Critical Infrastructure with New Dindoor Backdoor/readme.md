# Iran-Linked 'MuddyWater' Targets U.S. Critical Infrastructure with New 'Dindoor' Backdoor

The state-sponsored hacking group MuddyWater (Seedworm) has launched a fresh campaign targeting U.S. banks, airports, and software suppliers using a sophisticated new backdoor dubbed "Dindoor." This campaign marks a significant escalation in Iranian cyber operations, focusing on cloud control planes and identity theft to infiltrate sensitive networks.

Key takeaways

🔒 Dindoor Backdoor Discovered: A previously unknown backdoor leveraging the Deno JavaScript runtime has been identified, allowing attackers to execute malicious code and maintain persistence within corporate environments.

🚨 High-Value Sector Targeting: The campaign specifically targets U.S. financial institutions, aviation infrastructure, and defense-linked software providers, often exploiting regional geopolitical tensions to frame its social engineering attacks.

💡 Weaponizing Legitimate Cloud Tools: Threat actors are bypassing traditional perimeters by using legitimate utilities like Rclone and cloud storage providers like Wasabi and Backblaze for data exfiltration and malware delivery.

🛡️ Immediate Defense Requirements: To mitigate these threats, organizations must enforce phishing-resistant Multi-Factor Authentication (MFA), implement strict network segmentation, and urgently patch internet-facing edge devices.

🔗 [Source](https://www.security.com/threat-intelligence/iran-cyber-threat-activity-us)

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
