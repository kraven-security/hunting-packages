# Fake Codex ClickFix Campaign Abuses Trust to Deploy Malicious PowerShell Payloads 

Attackers are masquerading as legitimate AI coding tools to trick developers into running malicious PowerShell commands via deceptive "ClickFix" error prompts. This campaign bypasses traditional network security controls by coercing victims into manually executing encoded payloads in their local terminals.

Key takeaways

**🎯 Target:** Software developers, IT staff, and engineers utilizing AI coding extensions or searching for technical troubleshooting solutions.

**💡 Insight:** Instead of exploiting system vulnerabilities, threat actors leverage human trust using "ClickFix" social engineering, prompting users to resolve fake browser errors by copy-pasting base64-encoded scripts directly into Command Prompt or PowerShell.

**☑️ Recommendation 1:** Issue an immediate threat advisory educating staff never to copy-paste terminal commands directly from web browser pop-ups or unverified error dialogs.

**☑️ Recommendation 2:** Enable PowerShell Script Block Logging (Event ID 4104\) and enforce AMSI (Antimalware Scan Interface) to detect obfuscated or encoded command execution in real time.

**☑️ Recommendation 3:** Enforce strict application control policies (e.g., AppLocker or Windows Defender Application Control) to limit non-admin script execution and implement Zero Trust Network Access (ZTNA) to isolate infected endpoints.

🔗 [Source](https://www.catonetworks.com/blog/cato-ctrl-when-trust-becomes-payload-in-fake-codex-clickfix-campaign/)

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
