# Beware: Fake Game Sites Steal Your Information

Cybercriminals are using the guise of "try my game" invitations to lead victims to fake sites that install information stealers like Nova_stealer, Hexon, and Stealit. Be cautious with unsolicited game links!

Key takeaways:

🎮 Fake Game Lure: Invitations to test new games are used as bait, directing users to fraudulent websites instead of legitimate gaming platforms.

💀 Malware Distribution: These sites deploy information stealers such as Nova_stealer, Hexon, and Stealit, which are designed to pilfer personal and financial information.

🤖 TTPs Utilized: Tactics like T1566 (Phishing), T1204 (User Execution), T1539 (Steal Web Session Cookie), T1555 (Credentials from Password Stores), T1589 (Gather Victim Identity Information), and T1585 (Establish Accounts) are employed by attackers.

🌐 Domain IoCs: Additional indicators of compromise include newly observed domains associated with this campaign, listed in security reports for further investigation.

⚠️ User Protection: Vigilance is advised; avoid downloading from unknown sources, use reputable security software, and verify the legitimacy of game sites before interaction.

🔗 https://www.malwarebytes.com/blog/news/2025/01/can-you-try-a-game-i-made-fake-game-sites-lead-to-information-stealers

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. These are all domains.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
