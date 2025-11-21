# Cisco Devices Under Attack: Hackers Deploy Linux Rootkits

A new hacking campaign, "Operation Zero Disco," is exploiting a vulnerability in Cisco IOS and IOS XE software to install stealthy Linux rootkits on older, unprotected systems. The attack leverages a known SNMP vulnerability to gain access and deploy malware that can execute code remotely and maintain persistent access.

Key takeaways:

🔒 SNMP Vulnerability: The attack exploits CVE-2025-20352, a stack overflow vulnerability in Cisco's SNMP subsystem. 

🛡️ Targeting Older Systems: The campaign primarily targets older Cisco devices that lack modern endpoint detection and response (EDR) solutions. 

💡 Fileless & Stealthy: The rootkit uses fileless components that disappear after a reboot, making it incredibly difficult to detect. 

🌐 Patch and Protect: All users of affected Cisco devices are urged to apply the latest security patches and implement robust EDR solutions to mitigate this threat.

🔗 [Source](https://www.trendmicro.com/en_us/research/25/j/operation-zero-disco-cisco-snmp-vulnerability-exploit.html)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
