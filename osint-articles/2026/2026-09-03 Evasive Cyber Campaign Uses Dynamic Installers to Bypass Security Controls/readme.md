# Evasive Cyber Campaign Uses Dynamic Installers to Bypass Security Controls

Microsoft Threat Intelligence observed attackers using spoofed sites to deploy trojanized installers. By dynamically regenerating archive files on the server for each download, attackers generate unique file hashes to evade static security blocklists and compromise target systems.

Key takeaways

**🎯 Target**: Organizations across healthcare, manufacturing, technology, logistics, government, and higher education, specifically impacting China-based operations of multinational enterprises and users searching for popular software utilities.

**💡 Insight**: The operation relies on server-side archive regeneration that generates unique file hashes for every download request while maintaining identical file names, effectively rendering static hash-based blocklists useless.

**☑️ Recommendation 1:** Shift detection strategies from static file hashes to behavioral telemetry, specifically alerting on downloaded installers spawning script interpreters or system binaries like `mshta.exe` and `regsvr32.exe`.

**☑️ Recommendation 2**: Enforce strict DNS-layer filtering to block web navigation to unverified look-alike domains and newly registered software distribution URLs.

**☑️ Recommendation 3**: Enforce Application Control policies (such as WDAC or AppLocker) and restrict local installation rights to mandate software distribution exclusively through managed enterprise catalogs.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/09/01/counterfeit-installers-system-compromise-tracking-deceptive-software-download-campaign/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-hunting-queries.kql`: List of Microsoft advanced threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
