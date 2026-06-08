# Your Smart TV is an Undetectable AI Scraper: Bright Data Proxy SDK Exposed

A technical investigation has revealed that a software development kit (SDK) embedded in popular Smart TV applications is covertly converting consumer devices into residential proxies for global web-scraping traffic used in AI model training.

**Key takeaways**

**🎯 Target**: Hundreds of millions of consumer households utilizing modern Smart TVs, specifically Samsung (Tizen) and LG (webOS) platforms, alongside various mobile applications hosting third-party ad frameworks.

**💡 Insight**: Reverse-engineering Bright Data's proxy SDK revealed that it defaults to a massive 200 GB monthly bandwidth budget per device and uses an unauthenticated relay protocol without message signing or device attestation, making it technically less secure than standard malware infrastructure.

**☑️ Recommendation 1**: Disconnect smart TVs from primary home Wi-Fi networks and isolate them on a dedicated IoT guest network or a restricted VLAN to strictly contain unauthorized outbound resource exploitation.

**☑️ Recommendation 2**: Audit all installed TV applications, delete obscure or unverified third-party software, and completely cut off internet access to the television if alternative streaming media sticks are used instead.

**☑️ Recommendation 3**: For long-term defense, configure network-level firewalls or custom router blocklists to restrict access to unauthorized unauthenticated configuration endpoints and actively monitor home data limits for anomalies.

🔗 [Source](https://blog.includesecurity.com/2026/06/the-smart-tv-in-your-livingroom-is-a-node-in-the-aiscraping-economy/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
