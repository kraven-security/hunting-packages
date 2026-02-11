# Security Alert: Is Your "7-Zip" Installer Selling Your Bandwidth?

A new malware campaign is using typosquatted 7-Zip websites to distribute installers laced with hidden proxyware. This stealthy software turns your machine into a residential proxy node, allowing unknown third parties to route their internet traffic through your IP address without your consent.

Key takeaways

🚨 Typosquatting Trap: Attackers are leveraging lookalike domains (such as 7-zip.org.es) to deceive users; a single extra character in the URL can be the difference between a tool and a threat.

🌐 Invisible Hijacking: The malicious payload operates silently in the background, consuming your bandwidth and potentially implicating your network in suspicious or illegal activities conducted by others.

🛡️ Stick to the Source: Always download essential utilities directly from the official developer—for 7-Zip, the only legitimate source is 7-zip.org.

💡 Monitor System Behavior: If you've recently installed 7-Zip from a third-party site, audit your background processes for unrecognized services or unusual spikes in network activity.

🔗 [Source](https://www.malwarebytes.com/blog/threat-intel/2026/02/fake-7-zip-downloads-are-turning-home-pcs-into-proxy-nodes)

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
