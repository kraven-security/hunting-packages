# Sophos Warns of Novel SVG Phishing Tactics Bypassing Security Measures

Sophos has highlighted a new phishing strategy where attackers use SVG files to embed malicious HTML, scripts, and malware, evading traditional email security filters. This method underscores the need for updated defenses against evolving phishing techniques.

Key takeaways:

📈 Emerging Threat: Cybercriminals are now leveraging SVG (Scalable Vector Graphics) files in phishing emails to hide malicious code, including HTML, scripts, and malware.

🔒 Bypassing Security: SVG files often bypass security systems due to their ability to contain executable code, making them a new vector for phishing attacks.

📧 Phishing Examples: These SVGs are attached to emails masquerading as legitimate notifications, like fax confirmations or audio transcript attachments, targeting well-known brands to increase credibility.

🕵️‍♂️ Malicious Content: The SVG files can execute scripts to steal credentials, install malware, or perform other malicious activities without the user's direct interaction.

🛡️ Defense Recommendations: Users and organizations should update their email security solutions to detect and block SVG files with embedded scripts, and educate staff on recognizing unusual file attachments.

🔗 https://buff.ly/3Q3ozvz

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
