# HoneyMyte Deploys 'CoolClient' Driver Rootkit for Advanced Evasion

Kaspersky researchers detailed new capabilities used by the HoneyMyte APT group (Mustang Panda), which now deploys a kernel-mode driver rootkit alongside its CoolClient backdoor framework. Operating at the system kernel level, the rootkit conceals malicious activity, disables security tools, and maintains deep persistence across target networks.

Key takeaways:

**🎯 Target:** Government agencies, diplomatic entities, and high-value corporate targets targeted by the HoneyMyte threat actor.

**💡 Insight:** Operating in kernel space allows the CoolClient rootkit to effectively blind Endpoint Detection and Response (EDR) platforms and prevent standard anti-malware tools from terminating the underlying backdoor.

**☑️ Recommendation 1:** Enforce strict Driver Signature Enforcement (DSE) and enable Hypervisor-Protected Code Integrity (HVCI / Memory Integrity) on all Windows endpoints to block unauthorized kernel driver loading.

**☑️ Recommendation 2:** Utilize Attack Surface Reduction (ASR) rules and maintain a blocklist for known vulnerable kernel drivers (BYOVD attack prevention).

**☑️ Recommendation 3:** Conduct regular kernel-level memory scans and monitor for unauthorized service creation or driver registration events across critical network assets.

🔗 [Source](https://securelist.com/honeymyte-coolclient-driver-rootkit/121028/)

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
