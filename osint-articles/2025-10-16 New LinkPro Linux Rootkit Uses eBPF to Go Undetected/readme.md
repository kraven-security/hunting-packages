# New "LinkPro" Linux Rootkit Uses eBPF to Go Undetected

A new and sophisticated Linux rootkit, "LinkPro," is using advanced eBPF (extended Berkeley Packet Filter) technology to hide its presence on compromised systems. The malware, which is activated by a remote "magic packet," gives attackers a powerful backdoor into Kubernetes environments.

Key takeaways:

🔒 Novel Evasion: LinkPro is one of the first rootkits to use eBPF for concealment, making it incredibly difficult to detect with traditional security tools. 

🛡️ Vulnerable Jenkins Servers: The initial attack vector is a known vulnerability in Jenkins, highlighting the critical importance of timely patching. 

💡 Remote Activation: The rootkit can be activated by a single, specially crafted TCP packet, giving attackers a one-hour window to issue commands. 

🌐 Multi-Stage Payload: The attack involves a complex, multi-stage infection process that begins with a malicious Docker image and ends with the deployment of the LinkPro rootkit.

🔗 [Source](https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `yara-rules.yar`: List of YARA rules to detect the threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
