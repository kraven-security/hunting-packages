#  Webworm APT Evolves: New Stealth Proxy and Cloud C&C Techniques Discovered 

The China-aligned APT group Webworm has significantly shifted its tactics, moving away from traditional backdoors toward custom proxy networks and cloud-based C2 infrastructure. Historically active in Asia, the group has pivoted to aggressively target infrastructure in Europe.

Key takeaways

**🎯 Target**: Government organizations across Europe, specifically in Spain, Italy, Belgium, Serbia, and Poland, as well as academic institutions, focusing heavily on vulnerable public-facing web servers and virtual machine management infrastructure.

**💡 Insight**: Webworm uses "living-off-the-cloud" evasion, abusing legitimate services like GitHub, Amazon S3, Discord, and Microsoft Graph API via custom backdoors (EchoCreep and GraphWorm) to stage payloads and bypass perimeter filters.

**☑️ Recommendation 1 (Short-Term)**: Implement immediate behavioral monitoring and egress traffic inspection for communication targeting Discord and Microsoft OneDrive API endpoints, and audit public cloud resources (like AWS S3) for misconfigurations.

**☑️ Recommendation 2 (Long-Term)**: Enhance external attack surface monitoring to proactively block web path scanners, mandate patching of legacy web vulnerabilities (e.g., CVE-2017-7692), and restrict the unencrypted storage of remote connection configurations.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/webworm-new-burrowing-techniques/)

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
