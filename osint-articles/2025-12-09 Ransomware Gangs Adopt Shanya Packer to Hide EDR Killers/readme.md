# Ransomware Gangs Adopt 'Shanya' Packer to Hide EDR Killers

A new packer-as-a-service called "Shanya" has become a go-to tool for major ransomware gangs, allowing them to cloak "EDR killers" and stealthily dismantle security defenses before encrypting networks. Security researchers warn that this advanced obfuscation service is fueling a surge in sophisticated attacks by groups like Medusa, Qilin, and BlackSuit.

Key takeaways:

📦 Packer-as-a-Service: Shanya (also known as "VX Crypt") is a commercial obfuscation service sold on underground forums, enabling multiple ransomware groups to bypass detection using the same advanced techniques.

⚔️ EDR Killer Deployment: The packer is primarily used to hide tools that terminate Endpoint Detection and Response (EDR) agents, often leveraging the "Bring Your Own Vulnerable Driver" (BYOVD) technique to disable security software.

🛡️ Advanced Evasion: Shanya employs complex evasion techniques, including "junk code" insertion, API hashing, and unhooking mechanisms, to evade security tools and frustrate manual analysis.

🌐 Widespread Adoption: Beyond ransomware, the packer has been observed delivering various other malware strains, including the BumbleBee loader and Lumma information stealer.

🤝 Cross-Gang Collaboration: The shared use of Shanya suggests a level of tool/knowledge leakage or coordination between competing ransomware cartels, complicating defense efforts.

🔗 [Source](https://news.sophos.com/en-us/2025/12/06/inside-shanya-a-packer-as-a-service-fueling-modern-attacks/)

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
