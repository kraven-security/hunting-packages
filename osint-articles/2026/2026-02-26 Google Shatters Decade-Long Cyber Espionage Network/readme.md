# Google Shatters Decade-Long Cyber Espionage Network

Google TAG and Mandiant have successfully disrupted "UNC2814," a prolific China-linked threat actor that spent years spying on government and telecommunications sectors across 42 countries. By weaponizing a novel backdoor called GRIDTIDE, the group effectively masked its malicious commands within legitimate Google Sheets traffic to evade traditional security detection.

Key takeaways

🌐 Global Espionage Apparatus: UNC2814 (also known as Gallium) compromised at least 53 organizations worldwide, focusing on harvesting sensitive PII, including national IDs and phone records, to monitor persons of interest.

🔒 Living-off-the-Cloud: In a sophisticated "hide-in-plain-sight" move, the group used the Google Sheets API as a command-and-control (C2) platform, allowing malicious data transfers to masquerade as benign office activity.

🛡️ Proactive Disruption: The coordinated takedown involved terminating malicious Google Cloud projects, sinkholing domains, and disabling attacker-controlled accounts, dealing a significant blow to the group's long-standing infrastructure.

💡 The Network Edge Vulnerability: This campaign underscores that state-sponsored actors are still successfully gaining initial entry by exploiting unpatched web servers and edge systems before moving laterally via SSH.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/disrupting-gridtide-global-espionage-campaign)

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
