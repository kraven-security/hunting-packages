# Stealthy Chinese Backdoor Targets Linux Infrastructure

Cybersecurity researchers have identified a sophisticated new variant of the BPFdoor malware, linked to the China-based threat actor Red Menshen, targeting Linux systems. This "passive" backdoor is specifically engineered to infiltrate telecommunications and government sectors while remaining nearly invisible to traditional security monitoring.

Key takeaways:

🚨 Passive Stealth: BPFdoor avoids opening traditional network ports, instead using Berkeley Packet Filter (BPF) technology to "sniff" for specific trigger packets. This allows it to bypass firewalls and stay hidden from standard port scans.

🌐 Strategic Espionage: The campaign's focus on critical infrastructure and government entities suggests a high-priority mission centered on long-term intelligence gathering and persistent network access.

🛡️ Advanced Evasion: This latest iteration features enhanced obfuscation and anti-analysis techniques, making it significantly harder for standard Endpoint Detection and Response (EDR) tools to identify malicious kernel-level activity.

💡 Detection Shift: Defense teams must evolve beyond monitoring open ports. Identifying this threat requires deep packet inspection and auditing for unauthorized raw sockets or unexpected BPF filters within the Linux kernel.

🔗 [Source](https://www.rapid7.com/blog/post/tr-bpfdoor-telecom-networks-sleeper-cells-threat-research-report/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
