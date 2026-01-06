# Researchers Expose NonEuclid RAT's Advanced Evasion Techniques

Cybersecurity researchers have uncovered NonEuclid RAT, a sophisticated malware that uses UAC bypass and AMSI evasion to gain unauthorized remote access to Windows systems. This C# malware, active since November 2024, combines remote control with ransomware capabilities, highlighting the evolving threat landscape.

Key takeaways:

🖥️ Malware Details: NonEuclid RAT, a C# malware, provides unauthorized remote access to Windows systems with advanced evasion techniques.

🌐 Distribution: Advertised on underground forums since November 2024, tutorials on platforms like Discord and YouTube promote its use.

🛡️ Evasion Tactics: Employs UAC bypass, AMSI evasion, and anti-detection to maintain stealth and control over infected systems.

🗝️ Capabilities: Includes ransomware features, encrypting files with specific extensions and appending ".NonEuclid" to the filenames.

🧲 Persistence: Utilizes scheduled tasks and Windows Registry changes to ensure continued access to compromised machines.

🔗 https://buff.ly/3DLN1Pf

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. Just file hashes.
- `mitre-attack-ttps.txt`: List of MITRE ATT&CK techniques observed.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
> `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
>
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
