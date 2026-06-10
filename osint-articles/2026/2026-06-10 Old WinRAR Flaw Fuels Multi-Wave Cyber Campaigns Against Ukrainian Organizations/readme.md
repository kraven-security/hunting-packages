# Old WinRAR Flaw Fuels Multi-Wave Cyber Campaigns Against Ukrainian Organizations 

A critical path traversal vulnerability in WinRAR (CVE-2025-8088) remains a primary initial access vector for multiple Russia-aligned threat actors nearly a year after it was patched. Trend Micro’s intelligence reveals a rapid operational shift toward this exploit loop, driven largely by unmanaged software deployments lacking centralized enterprise patch mechanisms.

Key takeaways

**🎯 Target**: Public and private entities in Ukraine, specifically military innovation centers, local self-government bodies near the eastern border, law enforcement, and regional judicial services.

**💡 Insight**: The intrusion cluster SHADOW-EARTH-066 (tracked as UAC-0226) has shifted from basic macro-enabled Excel files to a silent WinRAR exploit chain using hidden NTFS Alternate Data Streams (ADS) to drop nested PowerShell loaders, evade sandboxes, and map out an updated, in-memory credential stealer called GIFTEDCROOK (`result.dll`).

**☑️ Recommendation 1**: Immediately inventory all endpoints to ensure WinRAR has been updated to version 7.13 or newer across the enterprise, as versions prior to this fail to sanitize malicious `..\..\` path traversal strings hidden inside archive ADS metadata.

**☑️ Recommendation 2**: Implement strict application blocklists or Host Intrusion Prevention System (HIPS) rules to detect and prevent double-nested PowerShell execution chains originating from the standard Windows `Startup` folder or `C:\ProgramData\`.

**☑️ Recommendation 3**: Establish unified endpoint management configurations that force centralized patch oversight for non-OS bundled utilities (like file archivers), closing unmanaged software loopholes that threat actors weaponize for long-term initial access vectors.

🔗 [Source](https://www.trendmicro.com/en_us/research/26/f/old-winrar-flaw-fuels-attacks-on-ukraine.html)

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
