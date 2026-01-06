# ToyMaker: Initial Access Broker Fuels Cactus Ransomware with LAGTOY Backdoor

Cisco Talos uncovers ToyMaker, a financially driven initial access broker using the LAGTOY backdoor to breach critical infrastructure. The broker sells access to the Cactus ransomware gang for double extortion. The 2023 campaign highlights the need for robust defenses against evolving IAB threats.

Key takeaways:

🕵️‍♂️ ToyMaker, identified by Cisco Talos in 2023, is a financially motivated initial access broker (IAB) compromising high-value organizations, deploying a custom LAGTOY backdoor to extract credentials and enable reverse shells.

🔍 Nearly a month after initial access, ToyMaker hands over compromised systems to the Cactus ransomware gang, which conducts network scans, deploys its own malware and executes double extortion tactics.

🛡️ LAGTOY’s use of dual-use tools (e.g., SSH, remote administration) and techniques like Safe Mode reboots showcases sophisticated evasion, requiring separate threat modeling for ToyMaker and Cactus.

⚠️ Talos emphasizes the need for new methodologies to track IABs, as ToyMaker’s distinct TTPs and access handovers to secondary actors like Cactus complicate traditional threat analysis.

🔗 https://buff.ly/PxBJ6PE

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
