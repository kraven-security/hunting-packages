# Stealthy 'CWPdoor' Backdoor Leaves 340,000+ Control Web Panel Instances at Risk

Threat actors are actively deploying CWPdoor, an invisible passive backdoor embedded directly into the recompiled `cwpsrv` binary of Control Web Panel (CWP). Because it triggers solely through cryptographically signed HTTP requests and suppresses web server logging, it enables stealthy remote command execution with zero antivirus detection.

Key takeaways:

**🎯 Target**: More than 340,000 internet-facing Control Web Panel (CWP) servers managing Linux environments worldwide.

**💡 Insight**: Rather than running as standalone malware, CWPdoor replaces the legitimate `cwpsrv` binary and hooks into Nginx configuration routines to hijack traffic, execute encrypted commands via an isolated helper process, and disable access logs for attacker traffic.

**☑️ Recommendation** **1**: Run `ss -axp | grep integrity` to check for the active malicious Unix domain socket (`ngx_http_integrity_helper`), review active tasks for suspicious helper processes via `ps aux | grep cwpsrv`, and scan the binary for signature strings using `strings /usr/local/cwpsrv/bin/cwpsrv | grep X-Ngx-Integrity`.

**☑️ Recommendation 2**: If compromised, restore the clean binary using the local backup created by the attacker deployment script (`/usr/local/cwpsrv/bin/cwpsrv.prev-*`), terminate rogue processes, and upgrade CWP to the latest version.

**☑️ Recommendation** **3**: Since attackers obtain root-level arbitrary command execution, immediately rotate all control panel and system credentials, and conduct host forensics to uncover persistent secondary payloads (such as the Ebury backdoor observed in related campaign samples).

🔗 [Source](https://blog.xlab.qianxin.com/cwpdoor-the-invisible-backdoor-living-inside-control-web-panel/)

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
