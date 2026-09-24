# New RemControl Android Banking Trojan Disables Play Protect via Fake VPN 

Group-IB researchers have uncovered RemControl, an aggressive new Android Banking Trojan distributed via malvertising that impersonates popular streaming applications. The malware gives operators extensive remote-control capabilities by abusing Accessibility Services and launching a local VPN to block Google Play Protect security scans.

Key takeaways

**🎯 Target**: Android mobile banking users across Europe (including Italy, France, Spain, Poland, and Portugal), Canada, and the Middle East who download applications from unverified sources or ad redirects.

**💡 Insight**: Beyond leveraging Telegram channels for dynamic command-and-control (C2) infrastructure rotation, RemControl initializes a local VPN service upon launch that actively blocks network traffic to Google Play services, effectively crippling Play Protect from conducting real-time malware scans.

**☑️ Recommendation 1**:End users should strictly avoid downloading APK files outside of official app stores and immediately audit and revoke Accessibility Service permissions for non-essential applications.

**☑️ Recommendation 2**:Financial institutions and mobile app developers should integrate dynamic overlay-detection capabilities and device integrity attestation into mobile banking apps to detect screen capture and UI injection attempts.

**☑️ Recommendation 3**:Enterprise MDM and SOC teams must enforce strict mobile application management policies and monitor endpoints for unauthorized VPN creation or anomalous background service activity. 

🔗 [Source](https://www.group-ib.com/blog/remcontrol-android-banking-trojan/)

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
