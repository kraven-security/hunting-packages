# Akira Ransomware's New Trick: Abusing a CPU Tool to Disable Your Defenses!

Akira ransomware is now using a legitimate CPU tuning utility to disable Microsoft Defender, making it harder to detect and stop. This new technique shows how attackers can turn trusted tools against you.

Key takeaways:

🔒 BYOVD Attacks: Attackers are using a "Bring Your Own Vulnerable Driver" technique, abusing a legitimate MSI driver to gain kernel-level privileges.

🚨 Evasion Tactic: The primary goal is to disable security products like Microsoft Defender, leaving the system vulnerable to the ransomware encryption.

💡 Constant Evolution: Ransomware groups like Akira are continuously refining their methods to bypass modern security controls.

🛡️ Proactive Defense: It's crucial to monitor your environment for the loading of suspicious or unusual drivers, even if they are signed and appear legitimate.

🌐 Threat Intelligence: Staying informed about the latest tactics, techniques, and procedures (TTPs) of threat actors is essential for a strong defense

🔗 [Source](https://www.guidepointsecurity.com/blog/gritrep-akira-sonicwall/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `yara-rule.yar`: YARA rule for detecting the vulnerable driver.
  
<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
