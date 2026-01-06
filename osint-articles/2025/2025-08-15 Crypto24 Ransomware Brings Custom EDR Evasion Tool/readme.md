# Crypto24 Ransomware Brings Custom EDR Evasion Tool

The Crypto24 ransomware gang is using new custom-built tools to evade Endpoint Detection and Response (EDR) solutions as they target large organizations. This marks a significant evolution in ransomware tactics for the group, making it harder for traditional security measures to keep up.

Key takeaways:

🚨 Evolving Threats: New ransomware families are continuously emerging with more advanced capabilities.

🛡️ EDR Evasion: Attackers are now commonly using custom tools specifically designed to disable and bypass EDR and other endpoint security products.

💡 Sophisticated Techniques: These new strains use multi-stage payload delivery and exploit legitimate, but vulnerable, drivers to gain system-level privileges and execute their malicious code.

🔒 Proactive Defense is Key: Organizations must prioritize the timely patching of all systems and software, as many of these attacks exploit known vulnerabilities.

🌐 Layered Security Matters: A multi-layered security approach, including robust network monitoring, phishing-resistant multi-factor authentication (MFA), and regular employee training on identifying suspicious activities, is more critical than ever.

🔗 [Source](https://www.trendmicro.com/en_us/research/25/h/crypto24-ransomware-stealth-attacks.html)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- 
<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
