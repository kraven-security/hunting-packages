# CrescentHarvest Campaign Targets Iran Protest Supporters

Cybersecurity researchers have uncovered a sophisticated espionage operation dubbed CrescentHarvest, which exploits recent political unrest in Iran to target activists, journalists, and diaspora communities with information-stealing malware. The campaign uses "heroic" protest-themed lures to deliver a novel Remote Access Trojan (RAT) designed for long-term surveillance and sensitive data exfiltration.

Key takeaways

🚨 Deceptive Social Engineering: Attackers distribute malicious RAR archives containing authentic protest footage and a Farsi-language report to build trust, hiding malicious .LNK files that masquerade as benign images or videos using double extensions (e.g., .jpg.lnk).

🔒 Advanced Info-Stealing Capabilities: The primary payload, a custom malware named CrescentHarvest, exfiltrates Telegram desktop data, browser credentials, and keystrokes, while specifically enumerating installed security tools to evade detection.

🛡️ Stealthy Execution: The campaign leverages DLL sideloading via a legitimate, Google-signed binary (software_reporter_tool.exe) and utilizes an event-based persistence mechanism that triggers the malware whenever the infected system connects to the internet.

🌐 High-Risk Targeting: While currently focused on Farsi-speaking supporters of Iranian protests, the tradecraft used suggests a state-aligned actor capable of rapidly assembling campaigns to capitalize on global geopolitical developments.

🔗 [Source](https://www.acronis.com/en/tru/posts/crescentharvest-iranian-protestors-and-dissidents-targeted-in-cyberespionage-campaign/)

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
