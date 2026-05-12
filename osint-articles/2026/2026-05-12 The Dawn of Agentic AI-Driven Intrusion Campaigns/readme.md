# The Dawn of Agentic AI-Driven Intrusion Campaigns

Trend Micro has uncovered campaigns SHADOW-AETHER-040 and SHADOW-AETHER-064, the first instances of "agentic AI" executing cyberattacks against government and financial sectors. These threat actors use AI agents to automate sophisticated intrusion steps, bypassing traditional defenses with dynamically generated custom scripts.

Key takeaways

🎯 **Target**: Government and financial organizations across Latin America, specifically targeting internal network environments through established traffic tunnels.

💡 **Insight**: This "Vibe Hacking" approach allows AI agents to interpret technical security research and instantly "code by vibe," creating bespoke, fileless malware and scripts that evade legacy antivirus tools relying on known file signatures.

☑️ **Recommendation 1**: Behavioral Detection Shift: In the short term, transition from signature-based security to behavior-based Managed Detection and Response (MDR) to identify the anomalous execution patterns of AI-generated scripts before they can exfiltrate data.

☑️ **Recommendation 2**: Zero Trust Tunnel Monitoring: Long-term, implement a Zero Trust Architecture (ZTA) with rigorous inspection of SSH and ProxyChains traffic, as these campaigns rely heavily on encrypted tunnels to grant AI agents direct access to internal assets.

🔗 [Source](https://www.trendmicro.com/en_us/research/26/e/vibe-hacking-two-ai-augmented-campaigns-target-government-and-financial-sectors-in-latin-america.html)

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
