# Midnight Blizzard Strikes Travelers: Beware the CaptiveCrunch Campaign 

Microsoft Threat Intelligence has uncovered "CaptiveCrunch," an AI-augmented cyberespionage campaign conducted by Storm-2945, an operational sub-cluster of the state-sponsored actor Midnight Blizzard. This ongoing operation manipulates traffic on compromised captive Wi-Fi portals to deploy malware and steal corporate credentials from unsuspecting users.

Key takeaways:

**🎯 Target**: The campaign actively targets corporate travelers worldwide by compromising Wi-Fi networks serviced by captive portal equipment at hotels, conference centers, and other shared venues.

**💡 Insight**: Attackers utilize "ClickFix" social engineering techniques to display highly convincing fake system, driver, or browser update prompts. This strategically tricks users into installing the "CornFlake" Windows remote access trojan and the "ChocoShell" infostealer directly from a manipulated Wi-Fi login screen.

**☑️ Recommendation 1**: Urgently educate all traveling employees to never download or run software updates, driver repairs, or verification checks prompted by public Wi-Fi network pages.

**☑️ Recommendation 2**: Security teams should immediately monitor Microsoft Entra ID environments for anomalous device code authentication flows and unauthorized device registrations linked to corporate travelers.

**☑️ Recommendation 3**: Ensure endpoint protection platforms are equipped to detect and remove the redundant persistence mechanisms established by the CornFlake malware. These advanced evasion techniques include deceptive Windows service registrations, scheduled tasks, and registry Run keys.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/07/31/captivecrunch-midnight-blizzard-targets-travelers-worldwide-for-malware-delivery-and-credential-theft/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `microsoft-hunting-queries.kql`: List of Microsoft threat hunting queries in KQL for Defender Endpiont and Sentinel SIEM in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
