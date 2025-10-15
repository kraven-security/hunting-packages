# Chinese Hackers Abuse Legitimate Geo-Mapping Tool for Year-Long Persistence

A sophisticated cyber-espionage campaign, attributed to the Chinese hacking group "Flax Typhoon," has been discovered using a legitimate geo-mapping tool, ArcGIS, to maintain stealthy and persistent access to a target's network for over a year. This novel attack vector highlights the growing trend of threat actors "living off the land" to evade detection.

Key takeaways:

🔒 Novel Exploit: This is the first known instance of an ArcGIS server object extension (SOE) being used to create a web shell, allowing for remote command execution.

🛡️ Stealth and Persistence: By abusing a legitimate tool, the attackers remained undetected for over a year and established a backup VPN connection for persistent access.

💡 Espionage Focused: The campaign was focused on espionage, with the attackers attempting to dump sensitive credentials to move laterally within the network.

🌐 Living Off the Land: The use of legitimate software is a hallmark of the Flax Typhoon group, making their activities incredibly difficult to distinguish from normal network traffic.

🔗 [Source](https://reliaquest.com/blog/threat-spotlight-inside-flax-typhoons-arcgis-compromise)

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
