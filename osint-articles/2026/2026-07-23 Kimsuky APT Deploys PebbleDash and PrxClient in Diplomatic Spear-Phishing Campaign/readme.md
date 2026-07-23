# Kimsuky APT Deploys PebbleDash and PrxClient in Diplomatic Spear-Phishing Campaign 

The notorious Kimsuky threat group has launched a sophisticated spear-phishing campaign impersonating diplomatic personnel to target individuals in the education and diplomatic sectors. The attack utilizes malicious LNK files and diplomatic decoy documents to deploy multi-stage payloads, including the PebbleDash backdoor, PrxClient proxy malware, and RDP wrapper tools.

Key takeaways:

**🎯 Target**: Individuals working in the education sector and diplomatic personnel.

**💡 Insight**: The threat actors employ advanced post-exploitation techniques, such as patching termsrv.dll to bypass Windows single-session RDP limits and utilizing novel UAC bypass mechanisms.

**☑️ Recommendation 1**: Immediately audit endpoint security controls and establish detection rules for unauthorized modifications to critical system files like termsrv.dll and malicious LNK execution.

**☑️ Recommendation 2**: Conduct targeted awareness campaigns for high-risk personnel regarding spear-phishing emails containing diplomatic decoy documents.

**☑️ Recommendation 3**: Establish a long-term defense strategy centered on strict network segmentation, continuous behavioral monitoring of remote access tools, and rigorous patch management.

🔗 [Source](https://asec.ahnlab.com/en/94552/)

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
