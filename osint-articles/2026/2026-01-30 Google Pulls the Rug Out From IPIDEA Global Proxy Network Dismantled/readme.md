# Google Pulls the Rug Out From IPIDEA: Global Proxy Network Dismantled

In a massive blow to cybercrime infrastructure, Google has disrupted IPIDEA, one of the world's largest residential proxy networks. By taking legal action and seizing dozens of domains, Google has neutralized a marketplace that sold access to over 6 million hijacked consumer devices used for everything from state-sponsored espionage to massive credential stuffing attacks.

Key takeaways

🕸️ Weaponized Residential IPs: IPIDEA functioned by routing malicious traffic through home internet connections, allowing over 550 threat groups (including APTs from Russia and China) to "hide in plain sight" while attacking corporate networks.

📦 Hidden in Plain Sight: The network grew by embedding malicious SDKs (like Castar and Earn SDK) into 600+ Android apps and "monetization" tools that promised users cash for their unused bandwidth, effectively turning their devices into exit nodes.

📺 IoT & Smart TV Risk: Malware was frequently found pre-installed on off-brand Android TV streaming boxes, silently participating in DDoS attacks and relaying commands behind household firewalls.

🛡️ Automated Protection: Google has updated Play Protect to automatically warn users and remove apps containing IPIDEA code; however, users should remain vigilant of "free VPN" apps like Galleon and Radish VPN.

🛑 Critical Infrastructure Takedown: The disruption affected multiple subsidiary brands, including 360 Proxy, 922 Proxy, and Luna Proxy, dealing a significant blow to the "proxy-as-a-service" economy.


🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/disrupting-largest-residential-proxy-network)

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
