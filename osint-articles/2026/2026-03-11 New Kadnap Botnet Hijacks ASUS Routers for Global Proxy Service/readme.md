# New 'Kadnap' Botnet Hijacks ASUS Routers for Global Proxy Service

A sophisticated new malware called "Kadnap" is targeting ASUS routers and other edge devices to conscript them into a decentralized proxy botnet. This campaign utilizes peer-to-peer protocols to hide command-and-control servers, making it exceptionally difficult for traditional security monitoring to detect.

Key takeaways:

🕵️‍♂️ Stealthy P2P Network: Kadnap employs a custom Kademlia Distributed Hash Table (DHT) protocol to mask its infrastructure within legitimate peer-to-peer traffic, effectively evading standard network detection tools.

🛡️ Persistent Access: The malware establishes long-term persistence by creating cron jobs that execute malicious shell scripts hourly, ensuring the bot remains active across device reboots.

⚠️ Monetized Cybercrime: Compromised devices are marketed through the "Doppelgänger" proxy service, allowing other threat actors to purchase anonymous access to your home or office IP address for illicit activities.

🔒 Urgent Mitigation: Security professionals recommend updating firmware immediately, disabling remote WAN management, and replacing end-of-life (EOL) hardware that no longer receives security updates.

🔗 [Source](https://blog.lumen.com/silence-of-the-hops-the-kadnap-botnet/)

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
