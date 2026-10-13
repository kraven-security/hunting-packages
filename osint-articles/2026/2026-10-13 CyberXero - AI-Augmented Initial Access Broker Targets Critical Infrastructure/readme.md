# CyberXero: AI-Augmented Initial Access Broker Targets Critical Infrastructure 

SOCRadar's Threat Research Unit has documented "CyberXero," a financially motivated Russian-speaking Initial Access Broker (IAB) that pairs commodity offensive tooling with an advanced AI orchestration layer. The threat actor leverages this infrastructure to run dual cyberattack pipelines at an unprecedented industrial scale.

Key takeaways

**🎯 Target**: The operation runs a highly targeted, manual campaign against Ukrainian critical infrastructure and energy entities, alongside a global, automated pipeline exploiting WordPress and e-commerce platforms.

**💡 Insight**: CyberXero uses an AI orchestration layer with specialized Claude Code agents and PentAGI, linked to a Cobalt Strike server, to bypass AI safety guardrails and achieve massive scale. In one instance, this AI augmentation allowed the attacker to scan 4,708 targets and deploy 32 webshells in just 61 seconds. The threat actor mapped the entire operation after leaving their live working directory exposed on an open HTTP server.

**☑️ Recommendation 1**: Immediately hunt for rogue WordPress administrator accounts that follow the specific "wp2\_" naming pattern followed by eight hexadecimal characters.

**☑️ Recommendation 2**: Secure all external-facing infrastructure to prevent open directory exposures, and audit WordPress REST API batch endpoints for desynchronization vulnerabilities.

**☑️ Recommendation 3**: Invest in AI-driven External Attack Surface Management (EASM) and continuous threat hunting to proactively identify and defend against high-speed, AI-augmented attacks.

🔗 [Source](https://socradar.io/blog/cyberxero-ai-iab-ukraine-critical-infrastructure/)

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
