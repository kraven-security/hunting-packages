# "Adblock for YouTube" Chrome Extension Leaves 11 Million Users Vulnerable to Remote Script Injection 

Researchers discovered a major risk in the "Adblock for YouTube" extension (ID: `cmedhionkhpnakcndndgjdbohmhepckk`), which has 11 million installs. The extension contains hidden mechanisms allowing remote attackers to execute arbitrary JavaScript on any website via simple backend changes, bypassing standard Chrome Web Store security reviews.

Key takeaways

**🎯 Target**: Over 11 million active browser instances, encompassing corporate end-user profiles and consumer endpoints where users have deployed the extension to suppress streaming media advertisements.

**💡 Insight**: Ad blockers enjoy high permission levels, which the developers of this extension have weaponized to enable remote command execution via server-side configuration changes. Despite no active payload delivery yet, the developer's history of malware-linked extensions, combined with this capability, creates an immediate security risk.

**☑️ Recommendation 1**: System administrators should immediately query enterprise endpoint management logs for the presence of the extension ID `cmedhionkhpnakcndndgjdbohmhepckk`. If discovered, execute a forced administrative removal order via centralized configuration profiles to sever the dormant vector before a backend configuration shift occurs.

**☑️ Recommendation 2**: Organizations must move away from reactive extension scanning and instead restrict browser modification rights by enforcing rigid administrative allowlists via MDM tools or Chrome Enterprise. Restricting users from installing unvetted, high-permission extensions significantly reduces the risk of consumer-grade utilities morphing overnight into corporate data-harvesting or session-hijacking tools.

🔗 [Source](https://www.island.io/blog/badblocker-11-million-users-one-server-call-away-from-compromise)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-extensions-ids.txt`: List of IDs related to the malicious Chrome extensions in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
