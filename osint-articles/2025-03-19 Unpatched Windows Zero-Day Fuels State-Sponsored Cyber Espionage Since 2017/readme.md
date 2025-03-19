# Unpatched Windows Zero-Day Fuels State-Sponsored Cyber Espionage Since 2017

Since 2017, 11 state-sponsored hacking groups from China, Iran, North Korea, and Russia have exploited a critical unpatched Windows zero-day flaw (ZDI-CAN-25373) for espionage and data theft. Despite nearly 1,000 exploit samples identified, Microsoft has not prioritized an immediate fix, leaving systems vulnerable.

Key takeaways:

🕵️‍♂️ Exploitation by State Actors: Since 2017, 11 state-sponsored groups from China, Iran, North Korea, and Russia have used the ZDI-CAN-25373 flaw for cyber espionage and data theft.

📁 Method of Attack: The vulnerability is exploited via malicious .LNK files with hidden command-line arguments, enabling stealthy execution of malicious payloads.

🚨 Scale of Threat: Nearly 1,000 exploit samples have been detected, highlighting widespread use and significant risk to organizations.

🛡️ Microsoft’s Response: Despite the threat, Microsoft has classified the issue as not requiring urgent updates, leaving systems exposed.

🌐 Global Impact: The flaw’s exploitation underscores the persistent danger of unpatched vulnerabilities in widely used operating systems like Windows.

🔗 https://buff.ly/u7F2mVX

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `hunting-queries.txt`: Trend Vision One Search App threat hunting queries.
- `ZDI-CAN-25373.yar`: YARA rule to find files exploiting ZDI-CAN-25373.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
