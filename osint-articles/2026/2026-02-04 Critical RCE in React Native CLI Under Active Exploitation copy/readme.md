# Legitimate Forensic Tools Turned Against Us: The Rise of the EnCase EDR Killer

Cybersecurity researchers have uncovered a sophisticated "EDR killer" tool that weaponizes a legitimate, old kernel driver from the EnCase forensic suite to systematically blind security defenses. By exploiting the "Bring Your Own Vulnerable Driver" (BYOVD) technique, attackers are now able to terminate 59 different security processes, including top-tier EDR and antivirus solutions.

Key takeaways:

🚨 Weaponizing Trust: Attackers are abusing EnPortv.sys, an old EnCase kernel driver, to gain high-level system access and bypass modern Windows protections like Protected Process Light (PPL).

🔓 The Revocation Gap: Despite the driver's certificate being revoked years ago, it remains effective because Windows validates timestamps rather than active Certificate Revocation Lists (CRLs) for legacy drivers.

🛠️ Deep Persistence: The tool disguises itself as a legitimate "OEM hardware service," ensuring it remains active even after system reboots to continuously kill security services as they restart.

🌐 Credential Entry Point: The initial breach was traced back to compromised VPN credentials lacking Multi-Factor Authentication (MFA), highlighting that basic security hygiene is still a primary failure point.

🛡️ Actionable Defense: To mitigate this risk, organizations must enable HVCI/Memory Integrity, enforce strict MFA on all remote access, and use Windows Defender Application Control (WDAC) to block known vulnerable drivers.

🔗 [Source](https://www.huntress.com/blog/encase-byovd-edr-killer)

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
