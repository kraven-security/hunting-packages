# Kyber Ransomware Experiments With Post-Quantum Encryption

Rapid7 research details a dual-platform offensive by the Kyber ransomware group targeting VMware ESXi hypervisors and Windows file servers. By combining cross-platform payloads with "post-quantum" encryption marketing, the group aims for total operational paralysis across enterprise environments.

Key takeaways

🎯 Target: Mission-critical virtualization infrastructure (VMware ESXi and Hyper-V) and core Windows file servers, specifically within high-value enterprise networks.

💡 Insight: Kyber uses "post-quantum" encryption as marketing; the Windows variant implements a hybrid Kyber-ChaCha20 scheme, while the ESXi version merely advertises it while relying on RSA-4096.

☑️ Recommendation 1: (Short-term) Actively monitor VMware management files, such as /etc/motd and /usr/lib/vmware/hostd/docroot/index.html, for unauthorized modifications or defacement, which are primary indicators of a Kyber ESXi breach.

☑️ Recommendation 2: (Short-term) Implement strict egress filtering and alerting for data exfiltration tools like Rclone and unauthorized outbound connections to AWS S3 buckets, as these are the group's preferred methods for double extortion.

☑️ Recommendation 3: (Long-term) Harden virtualization hosts by disabling SSH unless strictly required and transition to immutable, air-gapped backups to ensure that even a full hypervisor compromise cannot lead to irreversible data loss or total management lockout.


🔗 [Source](https://www.security.com/blog-post/harvester-new-linux-backdoor-gogra)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
