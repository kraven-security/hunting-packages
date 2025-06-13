# Fog Ransomware Leverages Unique Blend of Legitimate and Open-Source Tools for Stealthy Attacks

Fog ransomware hackers are utilizing a unique combination of legitimate tools, such as Syteca, and open-source penetration testing utilities to compromise networks and encrypt data. First spotted in May 2024, the group employs compromised VPNs and pass-the-hash attacks to evade detection. 

Key takeaways:

🕵️‍♂️ Unusual Toolset: Fog ransomware, observed since May 2024, utilizes legitimate employee monitoring software Syteca (Ekran) alongside open-source tools, including GC2, Stowaway proxy, and Adap2x C2 Agent Beacon, for stealthy operations.

⚠️ Attack Methods: The group gains initial access via compromised VPN credentials, escalates privileges with pass-the-hash attacks, disables Windows Defender, and encrypts files, including virtual machine storage.
 
🛠️ Data Exfiltration: Fog utilizes 7-Zip, MegaSync, and FreeFileSync to prepare and transfer stolen data to attacker-controlled infrastructure, thereby enhancing the efficiency of their ransomware campaign.

🔍 Rare Tools in Ransomware: The use of Syteca for screen recording and keystroke logging, combined with tools like Impacket SMB and PsExec, marks an atypical approach that complicates detection.

🔒 Mitigation Urged: Organizations should secure VPNs, enforce strong authentication, monitor for unusual tool usage, and patch systems to prevent Fog’s sophisticated, persistent attacks.

🔗 https://buff.ly/aaHZBct 

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
