# Malicious CPU-Z and HWMonitor Installers Distributed via Official CPUID Site

The popular hardware monitoring developer CPUID has fallen victim to a supply-chain attack, resulting in the distribution of malware-laden versions of its flagship tools, CPU-Z and HWMonitor. Threat actors successfully hijacked the official website infrastructure to swap legitimate installers with trojanized versions designed to deploy the RedLine Stealer malware.

Key takeaways:

🎯 Target: Hardware enthusiasts, gamers, and system administrators who downloaded or updated CPU-Z or HWMonitor directly from the official CPUID website during the breach window.

💡 Insight: This incident underscores the "trust paradox" of modern software distribution; even when users follow best practices by avoiding third-party mirrors and going directly to the source, a compromised backend can turn a reputable vendor into an unwitting malware distributor.

☑️ Recommendation 1: Users who downloaded software from CPUID recently should immediately perform a full system scan with updated EDR or antivirus tools and change all stored browser credentials, as RedLine Stealer is highly effective at harvesting sensitive data.

☑️ Recommendation 2: Before executing administrative-level diagnostic tools, manually verify the file's digital signature; legitimate CPUID installers are typically signed by "CPUID," and any "Unknown Publisher" warning or mismatched certificate should be treated as a critical red flag.

🔗 [Source](https://securelist.com/tr/cpu-z/119365/)

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
