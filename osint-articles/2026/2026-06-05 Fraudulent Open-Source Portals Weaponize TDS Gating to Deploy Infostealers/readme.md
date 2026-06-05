# Fraudulent Open-Source Portals Weaponize TDS Gating to Deploy Infostealers 

Check Point Research uncovered a malware ecosystem using lookalike sites to impersonate open-source projects. By leveraging a Traffic Distribution System (TDS), attackers selectively deliver payloads like RemusStealer to first-time visitors while remaining invisible to automated scanners.

Key takeaways:

**🎯 Target**: Technical professionals, systems developers, and security researchers who download open-source utilities and tools via commercial search engines.

**💡 Insight**: The infrastructure incorporates a deceptive "reproducibility trap" controlled by browser-side states like localStorage. The gated TDS strictly enforces a first-visit validation check, serving multi-stage malware payloads only on the very first eligible click, while forcing subsequent refreshes or analysis attempts to fall back to benign applications like the Opera browser to prevent detection.

**☑️ Recommendation 1**: Mandate that engineering and security teams completely bypass organic search links for software acquisition, ensuring they manually verify and fetch installation binaries directly from authentic source repositories like official GitHub project pages.

**☑️ Recommendation 2**: Deploy robust endpoint detection and response (EDR) platforms capable of inspecting browser-side storage mutations and hidden script executions, complemented by secure web gateways configured to intercept and block unauthorized traffic distribution system (TDS) redirection workflows.

🔗 [Source](https://research.checkpoint.com/2026/impersonation-click-hijacking-and-tds-inside-a-malware-distribution-ecosystem/)

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
