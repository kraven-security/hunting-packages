# Cybercriminals Use ClickFix Technique to Deploy NetSupport RAT

Cyber attackers are abusing the ClickFix method to distribute NetSupport RAT by tricking users with fake CAPTCHA pages into executing PowerShell commands. This malware gives attackers full control over compromised systems, highlighting the need for vigilance against deceptive browser prompts.

Key takeaways:

⚠️ Exploitation Method: Threat actors use ClickFix, a social engineering tactic, to deploy NetSupport RAT.

🔗 Fake CAPTCHA: Malicious websites masquerade as CAPTCHA checks to execute harmful PowerShell scripts.

🖥️ Malware Capabilities: NetSupport RAT allows attackers to remotely control devices, including screen monitoring and file manipulation.

🔍 Prevalence: Over 6,000 WordPress sites have been compromised in recent ClickFix campaigns.

🛡️ Security Advice: Users should be cautious of unexpected browser updates or CAPTCHA prompts and ensure they're on legitimate sites.

🔗 https://buff.ly/3WYwkqq

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
