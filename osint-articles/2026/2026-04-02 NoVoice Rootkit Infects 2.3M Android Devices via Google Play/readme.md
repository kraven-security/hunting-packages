# NoVoice Rootkit Infects 2.3M Android Devices via Google Play

A sophisticated new Android malware campaign, dubbed "NoVoice," has successfully bypassed Google Play’s security filters, infecting millions of devices. By masquerading as harmless utility apps, this malware gains deep "root" access to the operating system, allowing it to steal sensitive WhatsApp data and establish a persistence level that can even survive a factory reset.

Key takeaways

🖼️ Stealthy Steganography: Malicious payloads were hidden in seemingly benign PNG files across 50+ apps (including cleaners and games), making the infection nearly impossible for average users to detect during installation.

🔓 Deep System Compromise: The malware utilizes 22 different exploits to gain root privileges and disable Android's SELinux protections, effectively handing over full control of the device to the attackers.

💬 WhatsApp Session Hijacking: Once rooted, the malware specifically targets WhatsApp to extract Signal protocol keys and encrypted databases, enabling threat actors to clone and monitor your private conversations.

🛡️ Persistence Beyond Reset: On many older devices, the rootkit embeds itself into system partitions that a standard factory reset cannot reach, requiring a full firmware reflash to completely remove the threat.

🔗 [Source](https://www.mcafee.com/blogs/other-blogs/mcafee-labs/new-research-operation-novoice-rootkit-malware-android/)

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
