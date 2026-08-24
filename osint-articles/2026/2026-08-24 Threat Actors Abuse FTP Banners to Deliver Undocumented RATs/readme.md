# Threat Actors Abuse FTP Banners to Deliver Undocumented RATs 

Researchers discovered attackers using FTP server greeting banners as Dead Drop Resolvers to deliver C2 commands, bypassing payload detections. This delivers two new RATs (E4del and PINHOLE) featuring anti-sandbox checks, live desktop streaming, and Cloudflare Workers C2 resolution.

Key takeaways

**🎯 Target**: Corporate networks and employees targeted via phishing campaigns containing malicious shortcut (.LNK) files, frequently disguised as financial or promotional lures such as Spanish-language voucher claims.

**💡 Insight**: Rather than hosting C2 configurations within the malware binary or on traditional web services, attackers pull commands directly from the initial text response (banner) returned upon connecting to an FTP server, keeping the initial stager completely clean during static analysis.

**☑️ Recommendation 1**: Restrict and continuously log outbound FTP connections (TCP port 21\) originating from end-user workstations, prioritizing alerts for non-browser processes initiating FTP handshakes.

**☑️ Recommendation 2**: Configure EDR behavioral rules to detect `rundll32.exe`, PowerShell, or command interpreters executing immediately after a shortcut (.LNK) file interaction or connecting to WebDAV shares.

**☑️ Recommendation 3**: Establish network telemetry detections for non-browser applications communicating with legitimate third-party web services (such as Pinterest or SurveyMonkey APIs) often leveraged as secondary dead drop resolvers.

🔗 [Source](https://socradar.io/blog/ftp-banners-new-dead-drop-resolver-rats/)

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
