# A New Rust-Based Ransomware Leveraging Decentralized Infrastructure 

Microsoft Threat Intelligence has analyzed DeadLock, an emerging Rust-based ransomware that employs double extortion tactics alongside a unique decentralized recovery infrastructure to evade disruption. By combining advanced defense evasion techniques with blockchain-backed services, DeadLock ensures high operational resilience while systematically dismantling victim defenses.

Key takeaways:

🎯 **Target**: Global organizations across the IT, mining, logistics, manufacturing, and hospitality sectors (with a heavy focus on Europe), while deliberately geofencing and avoiding CIS and select Middle Eastern nations.

💡 **Insight**: DeadLock operators set themselves apart by utilizing a decentralized recovery ecosystem powered by the Session messaging network and blockchain services. This ensures their communication, negotiation, and data-leak infrastructure remains online even during active takedown efforts.

☑️ **Recommendation 1**: Update your EDR/XDR solutions to tightly monitor and block unauthorized event log clearing, batch-script-based privilege escalation (UAC bypass attempts), and the unexpected termination of core security services like Windows Defender.

☑️ **Recommendation 2**: DeadLock actively disables Volume Shadow Copy Services (VSS) and silently empties the recycle bin prior to encryption. Implement immutable, offline backups that cannot be accessed, modified, or deleted from the primary network.

☑️ **Recommendation 3**: Restrict administrative rights across your environment. DeadLock relies on escalating token privileges (such as `SeDebugPrivilege` and `SeTakeOwnershipPrivilege`) to maximize the scope of file encryption; strict access controls will significantly limit its blast radius.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/08/10/deadlock-ransomware-breaking-down-a-rust-based-encryptor-with-decentralized-recovery-infrastructure/)

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
