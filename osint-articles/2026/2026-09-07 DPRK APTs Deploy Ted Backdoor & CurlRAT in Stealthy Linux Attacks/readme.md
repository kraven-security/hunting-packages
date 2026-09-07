# DPRK APTs Deploy "Ted Backdoor" & CurlRAT in Stealthy Linux Attacks

A newly discovered Linux toolkit attributed to North Korean state-sponsored threat actors is actively targeting South Korean media and automotive sectors. This highly evasive framework utilizes a trojanized HAProxy instance, an SSH keylogger, and a custom CurlRAT to facilitate long-term cyber espionage, script injection, and credential harvesting.

Key takeaways:

**🎯 Target**: South Korean organizations within the automotive and media industries, with initial access likely gained by exploiting vulnerable Groupware web portals or exposed edge mail servers.

**💡 Insight**: The "ted backdoor" achieves deep evasion by compiling directly into the victim's existing HAProxy load balancer (version 2.8.12). This lets it silently intercept high-value traffic and inject malicious scripts using native APIs, while normal load-balancing operations continue uninterrupted.

**☑️ Recommendation 1**: Immediately audit edge web servers and verify the cryptographic integrity of critical Linux binaries, including HAProxy, sshd, crond, and agetty, to detect unauthorized trojanized replacements.

**☑️ Recommendation 2**: Proactively hunt for documented indicators of compromise (IoCs) within your environment, such as the `/tmp/jasper-log` staging file or suspicious encrypted log files stored under `/var/lib/sshd/`.

**☑️ Recommendation 3**: Strengthen DMZ security architecture by implementing robust File Integrity Monitoring (FIM) and strict network egress filtering to identify and block unauthorized command and control (C2) communications from edge devices.

🔗 [Source](https://www.rapid7.com/blog/post/tr-dprk-apts-ted-backdoor-curlrat-target-south-korean-media-automotive-sectors/)

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
