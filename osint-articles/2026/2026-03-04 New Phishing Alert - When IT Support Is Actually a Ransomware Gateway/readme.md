# New Phishing Alert: When "IT Support" Is Actually a Ransomware Gateway

Cybersecurity researchers have uncovered a sophisticated campaign where attackers overwhelm targets with email spam before calling them personally, masquerading as IT support to deploy the Havoc command-and-control (C2) framework. This multi-layered attack rapidly moves from a simple phone call to full network compromise and persistent lateral movement within hours.

Key takeaways:

📞 The "Human" Hook: Attackers use "email bombing" to create a sense of urgency, then call the victim to offer "help," leveraging social engineering to gain remote access via tools like Quick Assist or AnyDesk.

🛡️ Advanced Evasion: The campaign utilizes DLL side-loading and techniques like "Hell's Gate" and "Halo's Gate" to bypass EDR solutions, making the malware nearly invisible to traditional security software.

🏗️ Diversified Persistence: Beyond the Havoc C2 framework, threat actors are installing legitimate RMM tools (like Level RMM and XEOX) to ensure they maintain access even if their primary malware is detected.

⚡ Aggressive Speed: In observed cases, attackers moved from initial access to nine additional endpoints in just 11 hours, signaling a clear intent for rapid data exfiltration or ransomware deployment.

🔗 [Source](https://www.huntress.com/blog/fake-tech-support-havoc-command-control)

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
