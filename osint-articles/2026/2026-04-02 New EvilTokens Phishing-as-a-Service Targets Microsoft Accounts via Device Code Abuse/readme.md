# New "EvilTokens" Phishing-as-a-Service Targets Microsoft Accounts via Device Code Abuse

Cybersecurity researchers have identified a sophisticated new phishing kit dubbed "EvilTokens" that leverages the OAuth 2.0 device authorization flow to bypass traditional security measures. By tricking users into authorizing a malicious device code, attackers gain persistent access to Microsoft 365 environments, enabling full-scale data theft and automated Business Email Compromise (BEC) attacks.

Key takeaways

🔄 Abusing Legitimate Flows: EvilTokens exploits the "device code" login method—designed for smart TVs and IoT devices—to lure victims into entering a code on legitimate Microsoft portals, granting attackers full account tokens without ever seeing a fake login page.

📄 Multi-Format Lures: Attackers are distributing malicious QR codes and links embedded in diverse file types, including PDF, HTML, and SVG, often impersonating trusted services like DocuSign or Adobe Acrobat.

🔓 Full Ecosystem Access: Once a "token" is captured, threat actors gain immediate, persistent access to Outlook emails, OneDrive files, Teams conversations, and the ability to perform SSO impersonation across the organization.

🤖 BEC Automation: The service includes advanced features that automate the next steps of a Business Email Compromise attack, significantly lowering the barrier for entry for less-skilled cybercriminals.

🔗 [Source](https://blog.sekoia.io/new-widespread-eviltokens-kit-device-code-phishing-as-a-service-part-1/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `yara-rules.yar`: List of YARA detection rules associated with the threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
