# Over 1,500 PostgreSQL Servers Hijacked in Stealthy Fileless Crypto Mining Campaign

A sneaky campaign dubbed "CPU_HU" has compromised over 1,500 PostgreSQL servers. It uses fileless malware to mine crypto under the radar of traditional defenses. Weak passwords and misconfigurations are to blame.

Key takeaways:

🦠 Massive Breach: The "CPU_HU" campaign has targeted over 1,500 cloud-hosted PostgreSQL servers, exploiting weak credentials to deploy fileless crypto miners.

🕵️‍♂️ Evasive Tactics: The JINX-0126 group uses the PG_MEM malware, customized per victim, to mine Monero (XMRig) while dodging detection with in-memory execution.

🔓 Vulnerability Exposed: Publicly accessible servers with predictable or weak passwords are prime targets, echoing past attacks like the 2024 PG_MEM wave.

🛡️ Call to Action: Wiz researchers urge admins to enforce strong passwords, limit public access, and monitor for suspicious processes to halt this threat.

🔗 https://buff.ly/SbbmQsw

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `mitre-attack-ttps.txt`: List of MITRE ATT&CK techniques observed.
- `wallets.txt`: List of crypto wallets observed.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
