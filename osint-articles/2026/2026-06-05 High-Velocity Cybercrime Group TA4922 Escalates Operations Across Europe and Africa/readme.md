# High-Velocity Cybercrime Group TA4922 Escalates Operations Across Europe and Africa 

Proofpoint detected a significant expansion by the Chinese-speaking threat actor TA4922. This financially motivated group uses localized social engineering and an AI-accelerated pipeline to conduct fraud, steal data, and sell access globally.

Key takeaways

**🎯 Target**: Corporate organizations globally, historically concentrated in East Asia (Japan, Taiwan, Singapore) and recently expanding into the United Kingdom, Germany, Italy, and South Africa, with a heavy emphasis on human resources, payroll, and finance departments.

**💡 Insight**: TA4922 evades email security by shifting communications to messaging apps like WhatsApp and Teams. They also use AI to rapidly develop malware, including the Atlas RAT and RomulusLoader.

**☑️ Recommendation 1**: Implement urgent awareness training for payroll and HR staff, warning against regionalized tax and invoice lures, and strictly prohibit employees from shifting professional communications or sharing contact numbers to pivot to external messaging platforms.

**☑️ Recommendation 2**: Enforce application allowlisting, strictly limit local administrator privileges, and audit endpoint activities for unauthorized deployments of legitimate remote management tools (such as AnyDesk) running out of temporary user directories.

**☑️ Recommendation 3**: Deploy advanced endpoint detection and response (EDR) solutions equipped with behavioral heuristics capable of tracking sophisticated tradecraft like process hollowing and DLL sideloading, while adapting network perimeters to monitor or limit unexpected cross-platform communication shifts.

🔗 [Source](https://www.proofpoint.com/us/blog/threat-insight/ta4922-suspected-chinese-crime-group-going-global)

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
