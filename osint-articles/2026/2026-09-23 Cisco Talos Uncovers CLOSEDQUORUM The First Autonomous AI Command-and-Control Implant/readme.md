# Cisco Talos Uncovers CLOSEDQUORUM: The First Autonomous AI Command-and-Control Implant 

Cisco Talos uncovered CLOSEDQUORUM, a Windows malware implant that replaces traditional command-and-control infrastructure with autonomous decision-making using commercial LLMs. By querying AI endpoints for execution steps, it operates without human operator tasking or beaconing infrastructure.

Key takeaways:

**🎯 Target**: Windows endpoints harboring sensitive user credentials, browser data stores, and cryptocurrency wallets.

**💡 Insight**: CLOSEDQUORUM completely abandons dedicated C2 servers, querying a consensus panel of commercial LLMs (DeepSeek, Qwen, Mistral, and Google Gemini) to vote on tactical actions like process hollowing or credential dumping, blending malicious control traffic directly into legitimate AI API usage.

**☑️ Recommendation 1**: Implement strict outbound network egress filtering to restrict non-browser endpoint processes from reaching commercial AI provider API endpoints and Discord webhooks.

**☑️ Recommendation 2**: Enforce robust endpoint detection and response (EDR) rules to detect LSASS memory access, process hollowing, and WMI event persistence, rather than relying strictly on network domain blocklists.

**☑️ Recommendation 3**:Shift SOC defense strategies toward endpoint behavioral baselining and anomaly detection, adapting to an evolving threat landscape where adversaries leverage autonomous AI agents and legitimate SaaS infrastructure.

🔗 [Source](https://blog.talosintelligence.com/the-closed-quorum-inside-the-first-reported-autonomous-ai-c2-implant/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `yara-rules.yar`: List of YARA detection rules in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
