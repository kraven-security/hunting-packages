# Warlock Ransomware Targets Critical Infrastructure via SharePoint Flaws 

The China-nexus threat group Longlegs is actively deploying Warlock ransomware by exploiting unpatched Microsoft SharePoint vulnerabilities. Recent attacks have severely impacted critical infrastructure, government bodies, and universities, using advanced evasion techniques to maximize network disruption.

Key takeaways:

**🎯 Target**: Critical infrastructure operators (such as water utilities and telecommunications providers), regional governments, and educational institutions, predominantly in Portuguese- and Spanish-speaking nations.

**💡 Insight**: The attackers accelerate large-scale infection by using the Bring-Your-Own-Vulnerable-Driver (BYOVD) technique to kill security software at the kernel level, followed by rapidly deploying the ransomware network-wide via the domain's SYSVOL share.

**☑️ Recommendation 1**: Immediately audit and apply the latest security patches to all on-premises Microsoft SharePoint Server environments to block known "ToolShell" initial access vectors.

**☑️ Recommendation 2**: Monitor and restrict unusual activity from legitimate living-off-the-land (LotL) tools and unexpected remote access channels, such as unauthorized Visual Studio Code tunnels. 

**☑️ Recommendation 3**: Implement a comprehensive XDR strategy and strict domain access controls to detect kernel-level driver abuse and prevent unauthorized staging in critical directories like SYSVOL.

🔗 [Source](https://www.security.com/threat-intelligence/warlock-ransomware-critical-infrastructure)

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
