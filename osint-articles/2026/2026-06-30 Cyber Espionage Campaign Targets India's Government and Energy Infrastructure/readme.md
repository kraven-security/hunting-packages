# Cyber Espionage Campaign Targets India's Government and Energy Infrastructure 

The Acronis Threat Research Unit has identified active network compromises within Indian government circles and critical state-owned energy utilities linked to the China-aligned threat group Mustang Panda. The threat actor deployed specialized, newly discovered tools designed to secure a stealthy foothold for long-term data collection and intelligence gathering.

Key takeaways

**🎯 Target**: Indian government internal networks, specifically impacting machines utilized by senior administrative staff, as well as state-owned hydropower and critical energy infrastructure.

**💡 Insight**: Attackers are repurposing Zoho WorkDrive, a trusted cloud storage platform widely used in India’s public sector, as a command-and-control (C2) mechanism. This allows them to hide malicious traffic and data exfiltration within routine enterprise cloud communications.

**☑️ Recommendation 1**: Conduct an immediate, targeted threat hunt across endpoints to trace bulk or anomaly-driven automated data operations interacting with public Zoho storage services, and coordinate directly with regional authorities (such as CERT-In) to isolate and systematically clean infected systems.

**☑️ Recommendation 2**: Implement long-term defense-in-depth controls by configuring EDR to recognize unauthorized background process handshakes with trusted cloud infrastructure. Additionally, adopt zero-trust network security baselines that dynamically scrutinize application behavior, regardless of the target domain's baseline reputation. 

🔗 [Source](https://www.acronis.com/en/tru/posts/mustang-panda-targets-indias-government-and-energy-sectors/)

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
