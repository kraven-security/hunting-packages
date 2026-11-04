# Advanced AI Campaign Targets Government Linux Infrastructure

A sophisticated espionage campaign (tracked as CL-UNK-1211) recently targeted government and state-affiliated Linux servers between October 2025 and April 2026. Attackers are using AI-generated payloads and multi-layered credential theft to establish persistent backdoors, deploy a custom Go-based remote-access trojan (SysGoRAT), and exfiltrate data stealthily.

Key takeaways:

**🎯 Target**: Government entities and state-affiliated organizations that rely heavily on Linux and database environments.

**💡 Insight**: Threat actors are using generative AI to rapidly develop and adapt malicious scripts (seamlessly switching between PHP, JavaScript, Bash, and Python), leaving fingerprints such as distinct section headers and explanatory code comments in their payloads.

**☑️ Recommendation 1**: Actively monitor shell initialization files (e.g., `.bashrc`) and login workflows for unauthorized modifications, as attackers are frequently deploying fake `sudo` aliases to harvest cleartext passwords.

**☑️ Recommendation 2**: Audit global PHP settings (such as the `auto_prepend_file` directive) to prevent attackers from establishing durable execution mechanisms that can survive standard web shell removal.

**☑️ Recommendation 3**: Enhance your defense evasion detection capabilities by training incident responders to recognize false-flag red-team deception markers, timestamp manipulation, and unauthorized attempts to disable endpoint protections.

🔗 [Source](https://unit42.paloaltonetworks.com/ai-campaign-targets-linux-infrastructure/)

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
