# Interlock Ransomware Gang Deploys ClickFix Attacks with Fake IT Tools to Breach Networks

The Interlock ransomware gang is using ClickFix attacks, posing as IT tools like FortiClient and Palo Alto Networks, to trick users into running malicious PowerShell commands. Sekoia reports these tactics, active since January 2025, deploy ransomware and backdoors across corporate networks.

Key takeaways:

🕵️‍♂️ Interlock ransomware gang shifted to ClickFix attacks in January 2025, using fake CAPTCHA prompts to lure victims into executing PowerShell commands that install a PyInstaller-based backdoor, as observed by Sekoia.

🎭 Attackers impersonate legitimate IT tools, including FortiClient, Ivanti Secure Access, and Palo Alto Networks Global Protect, previously mimicking browser updates like Chrome and Edge.

🔍 The malicious PowerShell command opens a legitimate Advanced IP Scanner webpage to deceive users, while deploying a backdoor for potential ransomware delivery, though no additional payloads were observed.

⚠️ ClickFix’s rising popularity among threat actors, including North Korean hackers and other ransomware groups, highlights its effectiveness in social engineering. Interlock targets organizations like the National Defense Corporation.

🔗 https://buff.ly/C5ync2j

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara.rules.yar`: List of YARA rules for threat detection.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
