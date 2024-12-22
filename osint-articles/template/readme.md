# {{Article Title}}

{{social post}}

### Package Content
---
- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `<sigma-rule>.yml`: Sigma rule(s) to detect threat described in the article. Sigma rules are vendor agnostic detection or threat hunting rules you can convert to your security tooling using ![sigconverter](https://sigconverter.io/) or the ![Sigma CLI tool](https://github.com/SigmaHQ/sigma-cli/).
- `<yara-rule>.yar`: YARA rule(s) to detect or hunt for malware described in the article.
- *`other`*: Other detection or threat hunting opporutnities.

[!NOTE]
Use the following scripts in ![threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt: 
- `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking. 
- ...

