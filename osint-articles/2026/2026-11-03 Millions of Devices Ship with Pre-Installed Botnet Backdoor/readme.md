# Millions of Devices Ship with Pre-Installed Botnet Backdoor

Google Cloud Threat Intelligence disrupted the "XCPE" botnet, which operates via a factory-embedded backdoor in over 1.3 million Videostrong Android TV set-top boxes, telehealth devices, and digital signage. The pre-installed malware secretly turns devices into proxies and ad-fraud bots without user knowledge.

Key takeaways:

**🎯 Target:** Unsuspecting consumers and organizations purchasing hardware (primarily Android TV boxes like those branded MECOOL) from manufacturer Videostrong, placing infected devices directly onto their home and enterprise networks.

**💡 Insight:** Unlike traditional malware that requires a user to click a link or download a file, XCPE was a supply chain attack; the malware was written directly into the device's firmware at the factory, meaning a buyer joined a criminal botnet simply by plugging the device into the wall.

**☑️ Recommendation 1:** Security and IT teams should urgently cross-reference their hardware inventory against published indicators of compromise (IoCs), specifically looking for Videostrong or MECOOL-branded equipment, as well as checking IoT devices like digital signage and telehealth hardware.

**☑️ Recommendation 2:** Do not attempt to manually uninstall or clean the malware because the x.cpe backdoor is embedded in the system-level firmware; infected devices must be completely disconnected from the network and physically replaced.

**☑️ Recommendation 3:** Enhance network-level monitoring to detect unexpected or non-standard outbound connections from IoT devices, particularly those communicating over MQTT (ports 3885-3887), which this botnet utilizes for command and control.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/shutting-the-door-on-the-xcpe-botnet/)

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
