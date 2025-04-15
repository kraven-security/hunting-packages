# BPFDoor’s Hidden Controller Fuels Stealthy Cyberespionage Across Asia and the Middle East

BPFDoor malware, linked to APT group Earth Bluecrow, uses a hidden controller to open reverse shells. It targets telecom, finance, and retail in Asia and the Middle East. Trend Micro’s analysis reveals its stealthy tactics, evading firewalls for persistent network access.

Key takeaways:

🕵️‍♂️ State-Sponsored Threat: BPFDoor, attributed to Red Menshen (Earth Bluecrow), is a stealthy backdoor used for cyber espionage. Since 2021, it has targeted South Korea, Hong Kong, Myanmar, Malaysia, and Egypt.

🔓 Hidden Controller: A newly discovered controller enables encrypted reverse shells, allowing attackers to infiltrate deeper into networks and bypass firewalls with Berkeley Packet Filter (BPF) techniques.

🎯 Sector Focus: Recent attacks hit telecommunications, finance, and retail, leveraging BPFDoor’s ability to inspect network packets and activate via “magic sequences” for covert operations.

🛡️ Defense Evasion: The malware’s rootkit-like stealth, including traffic signaling (ATT&CK T1205), makes detection difficult, with Trend Vision One offering protective rules for mitigation.

🔗 https://buff.ly/kyByNfS

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
