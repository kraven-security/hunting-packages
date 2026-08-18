# Project CAV3RN Espionage Framework Upgrades Stealth with Google Apps Script & DNS-Based C2 Selection

Kaspersky researchers have discovered that the Project CAV3RN espionage framework now uses DNS-based C2 selection to switch between HTTPS and a Google Apps Script relay, allowing it to hide malicious traffic within trusted Google infrastructure.

Key takeaways:

🎯 **Target:** Organizations in Israel targeted by the highly modular Project CAV3RN cyberespionage framework.

💡 **Insight:** The malware's C2 module uses DNS A-record queries to fetch configuration and dynamically switch between HTTPS and Google Apps Script relays, enabling channel rotation that evades network monitoring.

☑️ **Recommendation 1:** Enhance network visibility by actively monitoring for anomalous DNS traffic. Look for high volumes of A-record queries to suspicious, repetitive, or unusually structured subdomains used for payload recovery and "freshness" checks.

☑️ **Recommendation 2:** Re-evaluate your egress filtering for trusted cloud environments. Implement zero-trust principles to scrutinize traffic to these services when initiated by unauthorized, non-browser background processes.

☑️ **Recommendation 3:** Deploy advanced endpoint behavioral analytics and EDR solutions to detect inter-component DLL brokers, unusual memory allocations, and unauthorized multi-transport C2 communications attempting to bypass perimeter defenses.

🔗 [Source](https://securelist.com/project-cav3rn-continues/120991/)

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
