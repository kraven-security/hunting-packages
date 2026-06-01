# First Captured Live Intrusion Driven by an LLM Orchestrator 

Sysdig Threat Research detailed the first real-time, AI-agent-driven cyberattack, in which an automated LLM orchestrator exploited a web vulnerability to dump a database in under an hour. The adaptive agent dynamically generated commands and used Cloudflare Workers to perform parallel exfiltration, bypassing source-IP detection. 

Key takeaways

**🎯 Target**: Organizations running internet-facing developer workloads (specifically vulnerable marimo notebooks via CVE-2026-39987), plaintext cloud credentials, and downstream PostgreSQL database environments.

**💡 Insight**: This incident marks a massive paradigm shift in which threat actors are replacing static, pre-built scripts with adaptive LLM agents that execute post-compromise actions based on real-time feedback, effectively undermining traditional, signature-based TTP defenses.

**☑️ Recommendation 1**: Update marimo instances to version 0.23.0 or later immediately, or restrict network access to the `/terminal/ws` endpoint. Conduct a comprehensive audit and rotate any AWS access keys, SSH keys, or `.env` secrets accessible from compromised hosts.

**☑️ Recommendation 2**: Shift detection telemetry away from rigid command signatures toward behavioral and intent-based runtime monitoring, specifically targeting unauthorized credential access, metadata harvesting, and anomalous database interactions.

**☑️ Recommendation 3**: Implement strict outbound network filtering on container environments to detect and block distributed API requests fanning out across external proxy pools or unapproved content delivery networks.

🔗 [Source](https://www.sysdig.com/blog/ai-agent-at-the-wheel-how-an-attacker-used-llms-to-move-from-a-cve-to-an-internal-database-in-4-pivots)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
