# Fake DocuSign and Gitcode Sites Deliver NetSupport RAT via Sophisticated PowerShell Attack

Fake DocuSign and Gitcode websites are tricking users into running malicious PowerShell scripts that deploy NetSupport RAT, enabling remote control of infected systems. The multi-stage attack employs clipboard poisoning and social engineering to evade detection, prompting users to verify the legitimacy of websites.

Key takeaways:

🕵️ Deceptive Lures: Fraudulent websites mimicking DocuSign and Gitcode trick users into copying and running malicious PowerShell scripts via Windows Run commands, often propagated through email or social media social engineering tactics.

🖥️ Multi-Stage Attack: The initial script downloads additional PowerShell scripts from an external server (tradingviewtool[.]com), which fetch a ZIP file containing an executable (jp2launcher.exe) that ultimately deploys NetSupport RAT for remote access.

🔒 Evasion Tactics: The attack’s multi-layered script chain, hosted on domains like docusign.sa[.]com, is designed to evade detection and resist security takedowns, with similarities to the SocGholish campaign noted in October 2024.

🦠 NetSupport RAT Impact: Once installed, NetSupport RAT grants attackers full remote control, allowing them to steal data, manipulate systems, and potentially deploy further malware on compromised Windows systems.

🛡️ Mitigation Advice: Users should avoid executing unsolicited scripts, verify website domains, and deploy endpoint detection tools to monitor for suspicious PowerShell activity and block unauthorized remote access attempts.

🔗 https://buff.ly/XHEBhZj

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
