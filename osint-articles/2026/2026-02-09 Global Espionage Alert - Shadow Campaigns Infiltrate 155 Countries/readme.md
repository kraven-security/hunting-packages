# Global Espionage Alert: "Shadow Campaigns" Infiltrate 155 Countries

A massive, state-sponsored cyber-espionage operation dubbed "Shadow Campaigns" has been unmasked, targeting government and critical infrastructure entities across 155 countries. Attributed to the threat group TGR-STA-1030 (UNC6619), this operationally mature actor is successfully harvesting high-stakes political, economic, and strategic intelligence on a global scale.
Key Takeaways

🌐 Massive Global Footprint: The operation has conducted reconnaissance on 155 countries and successfully breached over 70 high-value organizations, including government ministries, law enforcement, and critical infrastructure in 37 nations.

🚨 Invisible Kernel Stealth: Attackers are deploying "ShadowGuard," a custom Linux kernel rootkit utilizing eBPF technology. This allows the malware to hide processes and files at the kernel level, effectively bypassing most standard security and monitoring tools.

🛡️ Multi-Vector Arsenal: The group leverages a sophisticated mix of tailored phishing emails (via Mega.nz links) and the exploitation of 15+ known vulnerabilities in platforms like SAP Solution Manager and Microsoft Exchange to maintain access.

💡 Geopolitical Timing: Reconnaissance and attack spikes are meticulously timed with major world events, such as national elections and government shutdowns, to maximize the value of the intelligence exfiltrated.

🔗 [Source](https://unit42.paloaltonetworks.com/shadow-campaigns-uncovering-global-espionage/)

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
