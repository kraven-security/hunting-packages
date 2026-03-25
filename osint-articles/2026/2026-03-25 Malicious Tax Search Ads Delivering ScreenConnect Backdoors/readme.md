# Malicious Tax Search Ads Delivering ScreenConnect Backdoors

Cybercriminals are capitalizing on the tax deadline by deploying "malvertising" campaigns that lead unsuspecting users to download compromised remote access software. These malicious ads appear at the top of search results, aiming to steal sensitive financial data and gain persistent network access during a high-stress period for taxpayers.

Key takeaways:

🔍 Search Engine Manipulation: Threat actors are purchasing "Sponsored" ad slots for tax-related queries, effectively bypassing email-based security filters by meeting users directly in their search results.

🛠️ Abusing Trusted Tools: The campaign leverages backdoored versions of legitimate software like ScreenConnect to establish a persistent foothold on devices without triggering immediate suspicion.

🕵️‍♂️ Identity & Data Theft: Once the remote access tool is installed, attackers can monitor user activity in real-time, steal browser credentials, and harvest sensitive financial documents.

🛡️ Verification is Key: Users should avoid clicking "Sponsored" links for software downloads and instead navigate directly to official vendor websites or government portals like IRS.gov.

🔗 [Source](https://www.huntress.com/blog/w2-malvertising-to-kernel-mode-edr-kill)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara.rules.txt`: YARA detection rules related to the threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
