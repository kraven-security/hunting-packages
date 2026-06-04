# Weaponized Legitimate Traffic: How DesckVB RAT Evades Gateways and Blinds Telemetry

A sophisticated cyber campaign has been uncovered delivering the new DesckVB RAT via a highly evasive, five-stage in-memory infection chain. By abusing trusted Google infrastructure for redirection and dynamically loading company branding to build customized lures on the fly, the operation easily circumvents conventional secure email gateways.

Key takeaways

**🎯 Target**: Global enterprise networks and corporate employees, specifically targeting procurement, finance, or administrative personnel with deceptive, localized transactional lures (such as HTML attachments mimicking purchase orders).

**💡 Insight**: What makes this attack chain remarkable is its optimization to minimize cost and footprint; the threat actors reuse generic malspam infrastructure that pulls victim company logos live from the URL, masquerades traffic behind high-reputation domains, reboots the target machine if a sandbox environment is detected, and patches native Windows telemetry (AMSI and ETW) to render endpoint defenses blind.

**☑️ Recommendation 1**: Configure secure email gateways to aggressively flag, inspect, or quarantine incoming external emails containing minimal HTML attachments that execute zero-second meta-refresh redirects.

**☑️ Recommendation 2**: Implement robust endpoint detection rules to monitor and restrict anomalies or code injection targeting legitimate Microsoft-signed system tools, particularly focusing on InstallUtil.exe and MSBuild.exe.

**☑️ Recommendation 3**: Establish aggressive behavioral logging, such as PowerShell Script Block Logging and AMSI auditing, to capture fileless .NET reflection techniques and unauthorized native API hook modifications that standard, file-based antivirus scanners fail to intercept. 

🔗 [Source](https://www.huntress.com/blog/malspam-to-deskcvb-rat-delivery-chain-analysis)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
