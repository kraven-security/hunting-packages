# QEMU Abused to Evade Detection and Enable Ransomware Delivery

Sophos researchers identified threat actors using the QEMU emulator to create hidden VMs, masking malicious activity from security tools. Linked to STAC4713 and STAC3725, this technique enables credential theft and the deployment of the PayoutsKing ransomware.

Key takeaways

🎯 Target: Corporate networks with exposed, non-MFA VPNs (SonicWall, Cisco) or unpatched vulnerabilities in SolarWinds Web Help Desk and Citrix NetScaler.

💡 Insight: By running an Alpine Linux VM via QEMU on a Windows host, attackers create a "black box" where they can compile and execute attack toolkits (like Impacket and BloodHound) without triggering host-based EDR or antivirus alerts.

☑️ Recommendation 1: (Short-term) Audit environments for unauthorized installations of qemu-system-x86_64.exe and investigate suspicious scheduled tasks, such as "TPMProfiler," which may be used for persistence.

☑️ Recommendation 2: (Short-term) Monitor for unusual outbound SSH tunnels on non-standard ports and flag virtual disk images using deceptive extensions like .db or .dll.

☑️ Recommendation 3: (Long-term) Enforce multi-factor authentication (MFA) across all remote access points and implement strict application control policies to prevent the execution of unauthorized virtualization software.

🔗 [Source](https://www.sophos.com/en-us/blog/qemu-abused-to-evade-detection-and-enable-ransomware-delivery)

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
