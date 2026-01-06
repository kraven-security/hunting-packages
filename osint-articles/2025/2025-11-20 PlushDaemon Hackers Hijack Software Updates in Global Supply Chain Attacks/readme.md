# PlushDaemon Hackers Hijack Software Updates in Global Supply Chain Attacks

A China-aligned APT group, PlushDaemon, has been caught compromising a South Korean VPN provider and hijacking legitimate software updates via router implants to deploy the "SlowStepper" backdoor for espionage. This sophisticated campaign targets entities across East Asia, the US, and New Zealand, leveraging "EdgeStepper" malware to redirect update traffic to malicious servers.

Key takeaways:

🕵️‍♂️ Supply Chain Compromise: PlushDaemon breached the South Korean VPN provider IPany, replacing legitimate installers with a malicious version that deployed the SlowStepper backdoor alongside the VPN software.

🌐 Router-Based Hijacking: The group uses a Go-based network implant called EdgeStepper to compromise routers, performing Adversary-in-the-Middle (AitM) attacks by redirecting DNS queries for software updates to attacker-controlled nodes.

📉 Legitimate Apps Abused: Attackers hijacked update channels for popular software, including Sogou Pinyin, to deliver malware like LittleDaemon and DaemonicLogistics without raising user suspicion.

🦠 SlowStepper Backdoor: The primary payload is a feature-rich implant with over 30 modules capable of stealing credentials, taking photos, recording audio, and exfiltrating data from messaging apps like WeChat and Telegram.

🌏 Global Espionage: Active since at least 2019, the group has targeted universities, semiconductor firms, and manufacturing companies in South Korea, Taiwan, China, the US, and beyond.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/plushdaemon-compromises-network-devices-for-adversary-in-the-middle-attacks/)

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
