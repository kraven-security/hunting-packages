# Popular Browser Extensions Turned into Spyware

A new report reveals that a threat actor dubbed "ShadyPanda" has compromised popular browser extensions, impacting over 4.3 million users by turning legitimate tools into potent spyware. The campaign, which spanned seven years, secretly updated trusted extensions to monitor user activity and steal sensitive data.

Key takeaways:

🕵️‍♂️ Massive Reach: The campaign leveraged 4.3 million installations, with the "WeTab" extension alone accounting for 3 million impacted users.

🔄 Silent Updates: Attackers exploited the auto-update mechanism to push malicious code to previously legitimate extensions like "Clean Master," bypassing initial security reviews.

👀 Total Surveillance: The spyware monitors every website visit, logs search queries and mouse clicks, and exfiltrates encrypted browsing history and browser fingerprints to servers in China.

🔓 Remote Execution: Infected extensions run hourly remote code execution, allowing attackers to download arbitrary JavaScript with full browser access for credential theft and session hijacking.

🛡️ Immediate Action: Users should immediately remove extensions like "Clean Master" and "WeTab" and rotate passwords for any accounts accessed while these extensions were active.

🔗 [Source](https://www.koi.ai/blog/4-million-browsers-infected-inside-shadypanda-7-year-malware-campaign)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network indicators.
- `malicious-chrome-extensions.txt`: List of malicious Chrome extensions by ID.
- `malicious-edge-addons.txt`: List of malicious Edge addons by ID.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
