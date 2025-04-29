# Uyghur Diaspora Targeted with Trojanized Software in Sophisticated Phishing Campaign

Citizen Lab reports that a spearphishing campaign targeting the World Uyghur Congress used a trojanized Uyghur language text editor to deliver surveillance malware. Likely tied to Chinese state actors, the attack exploits trusted tools to spy on exiled Uyghurs.

Key takeaways:

🕵️‍♂️ In March 2025, senior World Uyghur Congress (WUC) members in exile received phishing emails impersonating a partner organization, delivering a trojanized version of the trusted UyghurEditPP text editor via Google Drive links.

🦠 The malware, active since at least May 2024, profiles systems, sends data to command-and-control servers and can load additional malicious plugins, enabling remote surveillance despite its lack of advanced technical sophistication.

🔍 Citizen Lab’s investigation, triggered by Google’s March 5, 2025, alerts of government-backed attacks, revealed two clusters of C2 infrastructure using Uyghur-themed domains and Choopa LLC IPs, suggesting deep social engineering tailored to the Uyghur community.

⚠️ The campaign reflects ongoing digital transnational repression by likely Chinese state actors, weaponizing cultural tools to target marginalized groups, with the WUC facing heightened risks due to its advocacy against China’s policies in Xinjiang.

🔗 https://buff.ly/Xi18VMy

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `rules.yara`: Detection rules related to the threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
