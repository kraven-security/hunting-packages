# Ransomware Gangs Pose as IT Support in Microsoft Teams Phishing Attacks

Ransomware groups are now using Microsoft Teams to impersonate IT support, tricking employees into granting remote access which leads to malware installation and network compromise. Organizations must secure their Teams settings to block external communications.

Key takeaways:

🕵️ Phishing Tactic: Ransomware gangs, like Black Basta, are leveraging Microsoft Teams by posing as IT support to deceive employees.

📧 Email Bombing: The attacks often start with overwhelming the target's email with spam, setting the stage for a Teams call from an attacker pretending to be IT support.

🔓 Remote Access: After gaining trust, attackers use tools like Quick Assist to gain control of the victim's device, installing malware to infiltrate the network.

🚨 Security Recommendations: Companies are advised to restrict external communications in Teams, enhance email security, and educate employees on verifying IT support requests.

🌐 Ongoing Threat: This method shows the adaptability of cybercriminals in using trusted platforms for malicious activities, as highlighted by experts and posts on X.

🔗 https://buff.ly/3PIfwjk 

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article - hashes, registry keys, and filepaths.
- `network-iocs.txt`: List of network IOCs in the article - IP addresses and email addresses.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
