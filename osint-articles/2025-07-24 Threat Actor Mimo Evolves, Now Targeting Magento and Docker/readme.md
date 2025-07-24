# Threat Actor "Mimo" Evolves, Now Targeting Magento and Docker

The threat actor known as Mimo (or Mimo'lette), previously observed targeting Craft CMS, has significantly evolved its tactics to include Magento ecommerce platforms and misconfigured Docker instances. This actor utilizes sophisticated techniques to remain undetected while monetizing compromised systems through cryptojacking and proxyjacking.

Key takeaways:

♻️ Evolving Threats: Mimo has expanded its target scope from Craft CMS to now include Magento and Docker, demonstrating a significant evolution in its capabilities and a broader threat to the e-commerce and web hosting sectors.

💻 In-Memory Evasion: The actor employs advanced evasion techniques, executing malware directly in memory to bypass traditional file-based security tools, making detection significantly more challenging.

💰 Dual Monetization: Mimo maximizes its illicit profits by simultaneously using victims' CPU resources for cryptocurrency mining (cryptojacking) and selling their bandwidth on residential proxy networks (proxyjacking).

🛡️ Vulnerability Exploitation: The initial access is gained by exploiting known vulnerabilities in PHP-FPM and various Magento plugins, reinforcing the critical need for timely patching and security updates.

🌐 Diversified Attacks: The addition of Docker environments to their target list shows Mimo's willingness to compromise a wide range of services, increasing the potential attack surface for many organizations.

🔗 [Source](https://securitylabs.datadoghq.com/articles/beyond-mimolette-tracking-mimo-expansion-magento-cms-docker/)

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
