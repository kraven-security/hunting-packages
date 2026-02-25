# Lazarus Group Adopts Medusa Ransomware

The notorious North Korean-linked Lazarus Group has been observed deploying Medusa ransomware in recent campaigns, signaling a strategic shift toward direct financial extortion. This evolution demonstrates how state-sponsored actors are increasingly adopting "commodity" Ransomware-as-a-Service (RaaS) tools to obfuscate their origins while maximizing illicit revenue.

Key takeaways

🚨 Tactical Convergence: Lazarus is moving beyond traditional espionage and cryptocurrency heists, leveraging the Medusa RaaS model to monetize network access through high-pressure extortion.

🔒 Obfuscation through RaaS: By using well-known ransomware variants, state-sponsored groups can blend in with "normal" cybercriminals, making attribution significantly more difficult for incident responders.

🛡️ The Double Extortion Threat: These attacks prioritize both data encryption and sensitive data exfiltration, forcing victims to face the dual threat of operational downtime and public data leaks.

💡 Critical Entry Points: The group continues to exploit unpatched vulnerabilities in web-facing applications for initial access, reinforcing the urgent need for a robust, risk-based patching cycle.

🔗 [Source](https://www.security.com/threat-intelligence/lazarus-medusa-ransomware)

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
