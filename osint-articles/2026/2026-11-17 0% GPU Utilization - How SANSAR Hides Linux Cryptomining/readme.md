# 0% GPU Utilization: How SANSAR Hides Linux Cryptomining

Elastic Security Labs is tracking a sophisticated Linux cryptomining threat, dubbed REF3364, that deploys the SANSAR orchestrator alongside rootkits to stealthily hijack GPU infrastructure for mining. The attack abuses exposed Ray job agents for initial access and heavily relies on Tor and Ethereum smart contracts to conceal its command-and-control (C2) operations.

Key takeaways:

**🎯 Target:** AI/ML infrastructure and organizations exposing unauthenticated Python distributed-workload frameworks like Ray job agents to the public internet.

**💡 Insight:** The malware uses a modified NVIDIA Management Library (NVML) wrapper to intercept telemetry requests and falsify GPU metrics, reporting 0% utilization to system administrators while the hardware actively cryptomines.

**☑️ Recommendation 1:** Audit all AI/ML environments (especially Ray deployments) to ensure job submission APIs are not exposed to the public internet without robust authentication.

**☑️ Recommendation 2:** Deploy YARA rules for SANSAR and netns to scan environments, and monitor for unauthorized dynamic kernel module support (DKMS) builds, which could indicate the acpi\_thermal\_mgr rootkit deployment.

**☑️ Recommendation 3:** Restrict outbound communication from GPU clusters, specifically blocking known Tor entry nodes and unexpected queries to blockchain networks (like Ethereum) which are used for C2 resolution.

🔗 [Source](https://www.elastic.co/security-labs/threat-command/sansar-linux-cryptomining-malware)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `yara-rules.yar`: List of YARA detection rules in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
