# Qilin & Warlock Ransomware Now Disabling 300+ EDR Tools

The Qilin and Warlock ransomware groups have evolved their tactics, using a sophisticated "Bring Your Own Vulnerable Driver" (BYOVD) technique to systematically silence security defenses. By leveraging legitimate yet vulnerable drivers, these attackers can terminate more than 300 EDR drivers, leaving compromised systems blind and defenseless before the final encryption phase.

Key takeaways

🛑 Advanced Defense Evasion: Attackers use a malicious DLL (msimg32.dll) and DLL side-loading to execute an "EDR killer" payload entirely in memory, suppressing Event Tracing for Windows (ETW) to fly under the radar.

🛠️ Abusing Trusted Drivers: The campaign weaponizes renamed legitimate drivers like ThrottleStop.sys to gain kernel-mode hardware access and terminate security processes from almost every major vendor.

🎯 Exploitation & Dwell Time: While Qilin often gains access via stolen credentials, Warlock actively exploits unpatched Microsoft SharePoint servers, with ransomware typically deploying about 6 days after the initial breach.

🛡️ Actionable Mitigation: Organizations must move beyond basic endpoint protection by enforcing strict driver governance (allowing only signed drivers from trusted publishers) and implementing real-time monitoring of kernel-level activities.

🔗 [Source](https://blog.talosintelligence.com/qilin-edr-killer/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
