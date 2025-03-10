# Microsoft Warns of North Korean Hackers Using Qilin Ransomware in Cyberattacks

Microsoft has linked North Korea’s Moonstone Sleet hackers to recent Qilin ransomware attacks. The group’s evolving tactics signal a dangerous blend of cybercrime and state-backed motives, targeting financial and espionage targets with trojanized software and fake companies.

Key takeaways:

🕵️‍♂️ Hackers Identified: Microsoft reports that Moonstone Sleet, a North Korean hacking group, has deployed Qilin ransomware in limited attacks, blending financial and espionage goals, as of March 7, 2025.

💻 Deceptive Methods: They use trojanized software (e.g., PuTTY), malicious npm packages, and fake firms like “C.C. Waterfall” to target victims via LinkedIn, Telegram, and email phishing.

🔗 Qilin Connection: Known since 2022 as “Agenda,” the Qilin ransomware gang has hit over 300 victims, now collaborating with Moonstone Sleet to expand its reach and impact.

🌐 Global Threat: With past North Korean operations like WannaCry and Maui ransomware, this shift to Qilin shows their growing ambition. Microsoft urges organizations to bolster defenses.

🛡️ Protect Yourself: Patch systems, verify software sources, and watch for social engineering tricks to counter this state-sponsored cybercrime wave.

🔗https://buff.ly/cIixaqy

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `microsoft-hunting-queries`: List of Microsoft XDR threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
