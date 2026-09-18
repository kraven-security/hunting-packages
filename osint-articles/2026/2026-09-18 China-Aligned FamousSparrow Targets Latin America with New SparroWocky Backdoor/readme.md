# China-Aligned "FamousSparrow" Targets Latin America with New "SparroWocky" Backdoor

The China-aligned APT group FamousSparrow has shifted its operational focus to Latin America, abandoning its older toolset in favor of a sophisticated new custom C++ backdoor named "SparroWocky". This stealthy implant leverages runtime memory manipulation, open-source libraries, and Beacon Object File (BOF) execution to conduct cyberespionage against high-profile government targets.

Key takeaways

**🎯 Target**: Government agencies and critical organizations across Latin America, specifically in Argentina, Ecuador, Guatemala, Honduras, Panama, Peru, Puerto Rico, and Venezuela.

**💡 Insight**: SparroWocky directly incorporates open-source libraries (such as MinHook and Mbed TLS), executes Beacon Object Files (BOFs), and patches code in memory at runtime to stymie analysis and bypass conventional security monitoring.

**☑️ Recommendation 1**: Implement memory-scanning EDR capabilities capable of detecting runtime code modification, unmapped executable memory regions, and Beacon Object File (BOF) execution.

**☑️ Recommendation 2**: Hunt for host-level indicators of DLL side-loading and monitor process execution for unusual persistence mechanisms via custom Windows services or Registry Run keys.

**☑️ Recommendation 3**: Enforce strict Zero Trust network segmentation and inspect outbound TLS traffic for RC4-encrypted exfiltration anomalies originating from sensitive government endpoints.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/beware-sparrowock-backdoor-bites-commands-catch/#latin-america-in-the-crosshairs)

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
