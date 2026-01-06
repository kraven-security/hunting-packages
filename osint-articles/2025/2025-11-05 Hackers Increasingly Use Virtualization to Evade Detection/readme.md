# Hackers Increasingly Use Virtualization to Evade Detection

Threat actors are adopting a stealthy new tactic: using legitimate virtualization technologies, like hypervisors (e.g., Hyper-V, KVM), to run their malware. By isolating malicious code inside a "guest" virtual machine, they can effectively hide it from security tools running on the main "host" operating system.

Key takeaways:

🕵️‍♂️ Evasion Technique: Malware running inside a guest VM is invisible to most host-based security tools (antivirus, EDR), as they cannot scan the guest's isolated memory and processes.

🛡️ Hiding in Plain Sight: Attackers abuse built-in, trusted system tools. This allows the malicious VM to blend in with legitimate IT infrastructure, evading suspicion.

🚨 Persistent Threat: A backdoor hidden in a VM can be extremely persistent. It may survive even if the host operating system is wiped and reinstalled, as long as the malicious VM file remains.

🔒 Detection Challenge: This advanced technique highlights a significant challenge for defenders, requiring layered security, network monitoring, and hypervisor-level integrity checks.

🔗 [Source](https://businessinsights.bitdefender.com/curly-comrades-evasion-persistence-hidden-hyper-v-virtual-machines)

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
