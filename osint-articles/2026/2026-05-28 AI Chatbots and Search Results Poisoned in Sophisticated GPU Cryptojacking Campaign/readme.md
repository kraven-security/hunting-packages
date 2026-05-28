# AI Chatbots and Search Results Poisoned in Sophisticated GPU Cryptojacking Campaign

Microsoft Defender Experts discovered an active cryptojacking campaign abusing SEO and AI chatbots to distribute malware. Attackers gain remote access via ScreenConnect and hide GPU-mining loaders within signed Microsoft .NET utilities to maximize profits from compromised devices.

Key takeaways

**🎯 Target**: PC enthusiasts, gamers, and hardware-focused users downloading popular system utilities (such as HWMonitor, CrystalDiskInfo, and FurMark) who are highly likely to own high-performance discrete GPUs.

**💡 Insight**: Rather than prioritizing infection volume, this operation engineered a precise targeting strategy that extends social engineering beyond conventional search engine results and into AI chatbot interactions to recommend malicious software.

**☑️ Recommendation 1**: Immediately audit enterprise environments for unauthorized ScreenConnect or Remote Monitoring and Management (RMM) deployments, and flag suspicious process hollowing within Microsoft-signed .NET binaries.

**☑️ Recommendation 2**: Enhance security awareness training to educate users that both search engine results and AI chatbot links are susceptible to manipulation, emphasizing that downloads must only occur directly from verified official vendor domains.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/05/26/poisoned-search-results-gpu-mining-cryptojacking-campaign-abusing-screenconnect-microsoft-net-utilities/)

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
