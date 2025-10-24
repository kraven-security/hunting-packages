# North Korean Hackers Targeting Defense Sector with Fake Job Offers

State-sponsored actors from North Korea (Lazarus Group) are actively running a sophisticated cyber-espionage campaign dubbed "Operation Dream Job." The attacks lure engineers from European defense companies with fake job opportunities to steal proprietary drone technology.

Key takeaways:

🌐 Primary Target: The campaign specifically targets European companies in the defense industry, particularly those involved in the unmanned aerial vehicle (UAV) sector.

🎣 Attack Vector: Hackers use social engineering, approaching targets on platforms like LinkedIn with lucrative but fake job offers to build trust.

🔒 Malware Delivery: Victims are tricked into opening malicious decoy documents, such as trojanized PDF readers, which then deploy advanced malware.

🛡️ The Payload: The attack uses malware families like 'ScoringMathTea,' a remote access trojan (RAT) that gives attackers full control to exfiltrate sensitive data and manufacturing know-how.

💡 The Goal: This is a clear case of state-level cyber-espionage, designed to steal critical technology to advance North Korea's own drone program.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/gotta-fly-lazarus-targets-uav-sector/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
