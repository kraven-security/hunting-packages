# State-Sponsored Hackers Adopt ClickFix Tactic for Sophisticated Espionage Campaigns

Proofpoint reveals that state-backed hackers from North Korea, Iran, and Russia are using ClickFix social engineering to deploy malware in targeted espionage. From late 2024 to early 2025, groups like Kimsuky and APT28 tricked users into running malicious PowerShell commands.

Key takeaways:

🕵️‍♂️ Between November 2024 and February 2025, North Korea’s Kimsuky, Iran’s MuddyWater (TA450), and Russia’s APT28 and UNK_RemoteRogue used ClickFix to deliver malware like Quasar RAT, targeting think tanks and organizations for espionage.

🎣 ClickFix tricks users into executing PowerShell commands via fake CAPTCHAs or error prompts. It often mimics legitimate software like Microsoft updates or secure drives, enhancing the attack’s credibility.

🌐 Kimsuky’s campaign spoofed Japanese diplomat emails to engage policy-focused think tanks, while MuddyWater and APT28 integrated ClickFix into existing phishing infrastructures for broader reach.

⚠️ The tactic’s growing adoption by state actors and cybercriminals, including ransomware gangs, signals its effectiveness, with Proofpoint urging stronger user awareness and phishing defenses.

🔗 https://buff.ly/vMxji7O

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
