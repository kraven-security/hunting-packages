# Over 1,000 SOHO Devices Hacked in China-Linked Cyber Espionage Campaign

A sophisticated cyber espionage campaign, attributed to Chinese hacking groups, has compromised over 1,000 Small Office/Home Office (SOHO) devices, creating a network for sustained attacks.

Key takeaways:

🌐 Global Reach: The "LapDogs" network primarily targets the U.S. and Southeast Asia, but also impacts Japan, South Korea, Hong Kong, and Taiwan.

🛡️ Custom Backdoor: Attackers are using a custom backdoor called "ShortLeash" to infect Linux-based SOHO devices.

🚨 Vulnerability Exploitation: The campaign exploits known security flaws in SOHO devices from popular brands.

💡 Cyber Espionage: The compromised network is being used to facilitate a long-term cyber espionage operation.

🔒 Secure Your Devices: SOHO device owners must apply the latest security patches to prevent infection.

🔗 [Source](https://securityscorecard.com/blog/unmasking-a-new-china-linked-covert-orb-network-inside-the-lapdogs-campaign/)


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
