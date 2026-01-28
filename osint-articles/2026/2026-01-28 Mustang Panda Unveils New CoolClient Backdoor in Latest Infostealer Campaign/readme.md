# Mustang Panda Unveils New "CoolClient" Backdoor in Latest Infostealer Campaign

The notorious Chinese-linked threat actor Mustang Panda (also known as Earth Preta) has evolved its toolkit, deploying a sophisticated new backdoor dubbed "CoolClient" to facilitate large-scale data theft. This campaign specifically targets government and non-profit organizations, utilizing multi-stage infection chains to bypass traditional security perimeters and exfiltrate sensitive information.

Key takeaways

🌐 Expanded Arsenal: Mustang Panda has transitioned from well-known tools like PlugX to "CoolClient," a custom backdoor capable of file manipulation, reverse shells, and high-resolution screen captures.

🚨 Sophisticated Delivery: Attackers are using highly targeted phishing emails with malicious archives (ZIP/RAR) that masquerade as legitimate diplomatic or administrative documents to lure victims.

🕵️ Stealthy Execution: The campaign employs a complex, multi-stage loading process designed to evade Endpoint Detection and Response (EDR) systems by hiding malicious activity within legitimate system processes.

🔒 Objective - Data Exfiltration: The primary goal of this operation is the deployment of infostealers that target browser credentials, session cookies, and sensitive local files for long-term espionage.

🛡️ Defensive Priority: Security teams should prioritize monitoring for unusual "living-off-the-land" (LotL) commands and implement strict macro and archive execution policies to disrupt the initial infection vector.

🔗 [Source](https://securelist.com/honeymyte-updates-coolclient-uses-browser-stealers-and-scripts/118664/)

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
