# Russian Gamaredon Hackers Target Western Military Mission with Malicious USB Drives

Russian state-backed hackers from Gamaredon hit a Western military mission in Ukraine with malware-laden USB drives, deploying GammaSteel to steal sensitive data. The campaign, active from February to March 2025, shows their evolving tactics to breach high-value targets.

Key takeaways:

🪖 Gamaredon’s Campaign: The Russian hacking group Gamaredon, also known as Shuckworm, targeted a Western military mission in Ukraine, using removable drives with malicious .LNK files to gain initial access.

🦠 GammaSteel Malware: From February to March 2025, attackers deployed an updated PowerShell-based GammaSteel malware, stored in the Windows Registry, to exfiltrate sensitive information.

🛡️ Evolving Threats: Symantec notes incremental improvements in Gamaredon’s tactics, techniques, and procedures (TTPs), increasing risks to Western networks due to their persistent and adaptable approach.

🔗 https://buff.ly/gqbpkXv

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
