# Osiris Ransomware Disarms Security with BYOVD Tactics

Cybersecurity researchers have uncovered a new ransomware family, Osiris, that is actively neutralizing defenses using the "Bring Your Own Vulnerable Driver" (BYOVD) technique. By deploying a malicious driver called POORTRY, attackers successfully terminate security software, paving the way for data exfiltration and full-scale encryption.

Key takeaways

🛡️ EDR Neutralization: Osiris uses the POORTRY driver to bypass and disable Endpoint Detection and Response (EDR) and antivirus tools, rendering traditional security layers ineffective.

📦 Cloud Exfiltration: Before triggering encryption, the threat actors use Rclone to siphon sensitive data into Wasabi cloud storage buckets, increasing the pressure for extortion.

🔗 INC Ransomware Link: Technical overlaps—including the use of a specific Mimikatz variant (kaz.exe)—suggest this new strain may be operated by affiliates previously linked to the notorious INC ransomware group.

🛠️ Dual-Use Tool Abuse: The attackers leverage legitimate tools like Rustdesk, Netexec, and MeshAgent to maintain persistence and move laterally within the network undetected.

🔒 Proactive Defense: To counter this, organizations must restrict administrative privileges to prevent driver installation and closely monitor for unauthorized use of cloud-syncing tools like Rclone.

🔗 [Source](https://www.security.com/threat-intelligence/new-ransomware-osiris)

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
