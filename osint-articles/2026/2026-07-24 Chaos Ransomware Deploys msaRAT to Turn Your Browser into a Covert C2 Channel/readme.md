# Chaos Ransomware Deploys msaRAT to Turn Your Browser into a Covert C2 Channel 

Cisco Talos has uncovered msaRAT, a novel Rust-based remote access trojan utilized by the Chaos ransomware group that never directly connects to the internet. Instead, this highly evasive malware hijacks the victim's browser via the Chrome DevTools Protocol (CDP) to establish a stealthy command-and-control (C2) channel hidden entirely within normal web traffic.

Key takeaways:

**🎯 Target**: The Chaos ransomware-as-a-service (RaaS) group primarily targets large enterprise organizations, heavily leveraging spam emails and voice phishing (vishing) campaigns to gain initial access.

**💡 Insight**: msaRAT operates entirely "off the browser" by routing double-encrypted WebRTC DataChannel traffic through legitimate Twilio TURN servers and Cloudflare Workers, allowing it to easily bypass proxy allowlists and traditional firewall defenses without raising alarms.

**☑️ Recommendation 1**: Update EDR configurations to proactively monitor for the anomalous execution of headless browsers (Chrome/Edge) and unauthorized usage of the Chrome DevTools Protocol (CDP) on user endpoints.

**☑️ Recommendation 2**: Deploy the latest Snort rules (1:301587, 1:66839) and ClamAV signatures (Win.Downloader.ChaosRaas-10060321-0) to detect and block active msaRAT communications and payload downloads.

**☑️ Recommendation 3**: Implement deep packet inspection (DPI) and protocol-aware firewall rules rather than relying strictly on port-based filtering, as this threat actor downloads initial payloads over plain HTTP disguised on port 443\.

🔗 [Source](https://blog.talosintelligence.com/chaos-msarat-living-off-the-browser-to-build-covert-c2-channel/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
