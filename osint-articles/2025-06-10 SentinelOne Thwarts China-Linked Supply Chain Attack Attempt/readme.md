# SentinelOne Thwarts China-Linked Supply Chain Attack Attempt

SentinelOne revealed details of a failed Chinese hacker attempt to breach its systems via a supply chain attack targeting an IT logistics partner. The incident, part of a broader campaign hitting over 70 global entities, underscores the persistent threat of state-sponsored cyber espionage.

Key takeaways:

🕵️‍♂️ Targeted Attack: Chinese hackers, linked to APT41, attempted a supply chain attack on SentinelOne by targeting an IT services and logistics firm managing hardware for the company in early 2025.

🌍 Global Campaign: The breach attempt was part of a wider operation, dubbed PurpleHaze and ShadowPad, targeting over 70 organizations worldwide, including a South Asian government, from June 2024 to March 2025.

🛡️ Sophisticated Tactics: Attackers used zero-day exploits and the GOREshell backdoor, alongside domains mimicking SentinelOne infrastructure, to gain access and evade detection.

✅ Successful Defense: SentinelOne’s robust security measures prevented the breach, and the company shared insights to strengthen industry defenses against similar threats.

🔗 https://buff.ly/8QhI3hk

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
