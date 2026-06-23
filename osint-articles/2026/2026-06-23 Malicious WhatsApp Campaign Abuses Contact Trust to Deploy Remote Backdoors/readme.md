# Malicious WhatsApp Campaign Abuses Contact Trust to Deploy Remote Backdoors 

Researchers uncovered a widespread crimeware campaign targeting WhatsApp Desktop and WhatsApp Web systems by hijacking previously compromised accounts to distribute malicious VBScript files. Disguised as routine financial and business documents, these attachments initiate a multistage infection chain that silently deploys legitimate enterprise management software, granting attackers persistent administrative control over victim devices.

Key takeaways

**🎯 Target**: Windows users running WhatsApp Desktop or Web applications rather than mobile environments. While observed globally across multiple countries, the campaign has predominantly impacted users in Malaysia, which accounts for roughly 80% of known infections.

**💡 Insight**: Threat actors achieve high execution success by weaponizing pre-existing peer trust and using already compromised accounts to blast malicious payloads directly to contact lists without accompanying message text. To systematically slip past traditional scanning, the scripts leverage localized multilingual business titles and embed simplified Chinese comments designed to mimic native Windows Update components.

**☑️ Recommendation 1**: Issue a security awareness alert instructing staff to never download or run automated script files (including `.vbs`, `.js`, `.bat`, or `.exe`) received over messaging apps. Mandate that any unexpected invoices or statements coming from trusted colleagues be verified through a secondary out-of-band communication channel before opening.

**☑️ Recommendation 2**: Audit host systems immediately for the unauthorized installation of legitimate Remote Monitoring and Management (RMM) platforms. Specifically monitor and sweep network endpoints for unapproved deployments or active administrative processes tied to ManageEngine Endpoint Central or AnyDesk agents.

**☑️ Recommendation 3**: Enforce attack surface reduction (ASR) rules and endpoint configuration policies to block or strictly limit the execution of script hosts like `wscript.exe`, `cscript.exe`, and `mshta.exe` within untrusted user paths or hidden public directories.

🔗 [Source](https://securelist.com/whatsapp-vbs-rmm-campaign/120290/)

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
