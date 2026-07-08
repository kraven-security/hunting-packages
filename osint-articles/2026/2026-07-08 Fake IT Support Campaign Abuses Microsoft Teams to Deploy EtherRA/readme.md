# Fake IT Support Campaign Abuses Microsoft Teams to Deploy EtherRAT 

Threat actors are combining phishing emails with Microsoft Teams vishing calls to impersonate IT support and trick employees into installing EtherRAT malware. Discovered by Palo Alto Networks’ Unit 42, this sophisticated campaign exploits legitimate remote management tools and the Ethereum blockchain to establish a highly resilient command-and-control (C2) infrastructure.

Key takeaways:

**🎯 Target**: Corporate networks and employees, who are deceived into granting machine access via external Microsoft Teams voice calls (often showing a "System Administrator" display name) and "Employee Survey" phishing lures.

**💡 Insight**: EtherRAT utilizes Ethereum smart contracts to dynamically retrieve active C2 server addresses from the blockchain (with a hardcoded fallback server). This decentralized approach makes its infrastructure highly resilient and exceptionally difficult for defenders to track or disrupt.

**☑️ Recommendation 1**: Enforce strict communication policies within Microsoft Teams by disabling or heavily restricting external interactions. Train users to remain highly suspicious of calls flagged with the "External and unknown" label.

**☑️ Recommendation 2**: Proactively monitor for and block the execution of unauthorized Remote Monitoring and Management (RMM) software (such as HopToDesk and AnyDesk), as well as unexpected, silent installations of Node.js environments via `curl.exe`.

**☑️ Recommendation 3**: Establish rigorous internal verification procedures for IT support interactions. Employees should be required to independently verify helpdesk requests through trusted internal channels before ever granting screen-sharing access or installing software. 

🔗 [Source](https://github.com/PaloAltoNetworks/Unit42-timely-threat-intel/blob/main/2026-06-28-Fake-IT-support-abuses-Teams-to-deliver-EtherRAT.txt)

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
