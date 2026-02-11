# Old School Tactics Meet New School Threats: The Rise of SSHStalker

A new Linux-based botnet dubbed 'SSHStalker' is targeting servers via SSH brute-force attacks, uniquely leveraging antiquated IRC protocols for its command-and-control communications. This throwback to 90s-era hacking proves that "obsolete" technology remains a potent tool for modern cybercriminals seeking to evade detection.

Key takeaways

🕵️ Retro Command & Control: SSHStalker utilizes IRC (Internet Relay Chat) for its C2 infrastructure, a rare tactic in the modern landscape that can bypass security tools primarily focused on monitoring HTTP/HTTPS-based malicious traffic.

🔑 Aggressive Brute-Forcing: The malware gains initial access by systematically testing credentials on Linux servers; once a match is found, the system is recruited into the botnet to await further instructions.

🛡️ Essential Hardening: To defend your environment, move beyond simple passwords to SSH keys, implement automated blocking like fail2ban, and specifically monitor for unexpected outbound traffic on legacy ports like 6667.

🚨 Detection Evasion: By using a "low and slow" approach with an uncommon protocol, SSHStalker aims to stay under the radar of standard behavioral analytics that aren't configured to flag IRC activity as a threat.

🔗 [Source](https://flare.io/learn/resources/blog/old-school-irc-new-victims-inside-the-newly-discovered-sshstalker-linux-botnet)

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
