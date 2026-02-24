# Wormable XMRig Alert: The Dangerous Rise of BYOVD in Cryptojacking

A sophisticated new malware campaign is making waves by combining wormable self-propagation with "Bring Your Own Vulnerable Driver" (BYOVD) tactics to deploy XMRig miners. As an analyst, this represents a significant escalation in cryptojacking, moving from simple resource theft to advanced defense evasion that can blind your security stack.

Key takeaways

🪱 Wormable Self-Propagation: Unlike typical miners that require manual execution, this strain utilizes automated lateral movement to spread across internal networks, turning one infected workstation into a fleet of miners.

🛠️ BYOVD Exploitation: The attackers are leveraging legitimate but vulnerable drivers to gain kernel-level privileges. This allows the malware to forcefully terminate EDR and antivirus processes that would otherwise block the miner.

💰 Persistent Resource Drain: By silencing defenses first, the XMRig payload can operate undetected for longer periods, significantly impacting system performance and driving up electricity and cloud infrastructure costs.

🛡️ Proactive Defense: Organizations should immediately review their driver loading policies. Implementing a strict driver blocklist (such as Microsoft's vulnerable driver list) is no longer optional; it's a critical layer of defense.

🔗 [Source](https://www.trellix.com/blogs/research/technical-deep-dive-the-monero-mining-campaign/)

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
