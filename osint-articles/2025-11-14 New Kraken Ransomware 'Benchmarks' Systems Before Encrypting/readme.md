# New Kraken Ransomware 'Benchmarks' Systems Before Encrypting

A sophisticated new ransomware variant, Kraken, is actively benchmarking victim systems before launching its main attack. This allows it to choose the most efficient encryption method to maximize damage while evading detection.

Key takeaways:

🔬 Performance Analysis: Kraken first assesses a system's performance to determine how quickly it can operate without causing a system overload that might trigger security alerts.

⚡ Optimized Attack: Based on the benchmark, the ransomware selects the most effective strategy (like full or partial encryption) to operate with maximum speed and minimal resource usage.

🛡️ Stealth & Evasion: This novel benchmarking feature is designed to ensure maximum damage in minimal time, helping the malware evade detection tools that monitor for high resource exhaustion.

🌐 Cross-Platform Threat: Kraken is a significant enterprise threat, with distinct encryptors built for Windows, Linux, and VMware ESXi environments.


🔗 [Source](https://blog.talosintelligence.com/kraken-ransomware-group/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
