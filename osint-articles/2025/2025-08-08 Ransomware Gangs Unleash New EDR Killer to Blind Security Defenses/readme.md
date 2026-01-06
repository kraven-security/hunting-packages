# Ransomware Gangs Unleash New "EDR Killer" to Blind Security Defenses

A new and sophisticated tool, dubbed "EDR Killer," is being actively used by at least eight different ransomware groups to disable and evade endpoint detection and response (EDR) and antivirus products. This allows the attackers to operate undetected on compromised networks before deploying their ransomware.

Key takeaways:

🚨 Widespread Adoption: This isn't an isolated incident. Major ransomware players like LockBit and Hive are using this tool, indicating a significant shift in attacker tactics.

🛡️ Bypassing Defenses: The tool cleverly uses a legitimate, signed driver to terminate security processes, making its malicious activity appear as normal system behavior.

💡 Precursor to Attack: The EDR Killer is a critical pre-ransomware step. Disabling security tools is one of the final actions an attacker takes before encrypting files, highlighting the importance of early detection.

🌐 Defense in Depth: This threat underscores the need for a multi-layered security approach. Relying solely on EDR is not enough; organizations need a combination of network monitoring, user training, and robust backup strategies.

🔒 Urgent Patching: The tool exploits known vulnerabilities. Keeping systems and security software fully patched and up-to-date is a crucial line of defense.

🔗 [Source](https://news.sophos.com/en-us/2025/08/06/shared-secret-edr-killer-in-the-kill-chain/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
  
<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
