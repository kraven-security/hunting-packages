# New 'OneClik' Attacks Weaponize Microsoft and AWS to Target Energy Sector

A sophisticated campaign, dubbed "One-Clik," is leveraging Microsoft's ClickOnce technology and Amazon Web Services (AWS) to deploy malware targeting the energy sector. These attacks use deceptive application installers to gain initial access, bypassing traditional security measures.

Key takeaways:

🚨 Novel Threat Vector: Attackers are abusing the legitimate Microsoft ClickOnce application deployment feature to trick users into installing malware, a technique that can evade conventional security detections.

🎯 Targeted Campaign: This campaign has a specific focus on the energy sector, highlighting the persistent and evolving threats to critical infrastructure.

☁️ Cloud-Powered Attacks: The use of AWS for command-and-control (C2) infrastructure allows attackers to blend in with regular traffic, complicating detection and response efforts.

💡 User Awareness is Key: The success of this attack relies on social engineering. Employees must be trained to scrutinize application installers, even those that appear to be from trusted sources like Microsoft.

🛡️ Defense in Depth: Organizations should review their security policies to control application installation and monitor for unusual network traffic to cloud services to mitigate this threat.

🔗 [Source](https://www.trellix.com/blogs/research/oneclik-a-clickonce-based-apt-campaign-targeting-energy-oil-and-gas-infrastructure/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `mitre-ttps.txt`: MITRE ATT&CK tactics, techniques, and procedures in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
