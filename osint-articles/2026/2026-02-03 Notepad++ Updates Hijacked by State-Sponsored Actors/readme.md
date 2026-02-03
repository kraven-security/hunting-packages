# Notepad++ Updates Hijacked by State-Sponsored Actors

State-sponsored hackers compromised Notepad++’s hosting infrastructure to hijack the official update mechanism for over six months, selectively delivering a custom backdoor to high-value targets. This sophisticated supply chain attack exploited infrastructure-level access to redirect update traffic from specific organizations to malicious servers.

Key takeaways

🔒 Infrastructure-Level Hijack: The breach occurred at the shared hosting provider rather than the source code, allowing attackers to intercept and reroute official update traffic (WinGUp) between June and December 2025.

🚨 Precision Targeting: This was not a mass infection; the China-linked threat actor "Lotus Blossom" (APT31) used IP filtering to deliver malware only to specific telecom and financial organizations while millions of others received clean updates.

🌐 Advanced "Chrysalis" Backdoor: Targeted victims were infected with a previously undocumented backdoor capable of spawning interactive shells, stealing files, and deploying Cobalt Strike beacons for long-term espionage.

🛡️ Mandatory Patching: The vulnerability was addressed in Notepad++ version 8.8.9. Users must upgrade to the latest version (v8.9.1+) to ensure the updater strictly enforces digital signature and certificate validation.

💡 Audit Your Systems: Security teams should hunt for suspicious 'update.exe' processes in %AppData%\Bluetooth or unexpected network calls from the GUP.exe updater process.

🔗 [Source](https://www.rapid7.com/blog/post/tr-chrysalis-backdoor-dive-into-lotus-blossoms-toolkit/)

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
