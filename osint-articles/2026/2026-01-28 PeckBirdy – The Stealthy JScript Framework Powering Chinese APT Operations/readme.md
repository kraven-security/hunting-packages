# PeckBirdy – The Stealthy JScript Framework Powering Chinese APT Operations

Cybersecurity researchers have uncovered "PeckBirdy," a sophisticated JScript-based command-and-control (C2) framework used by China-linked actors since 2023 to infiltrate government and private sectors across Asia. By leveraging "living-off-the-land" binaries and deceptive software updates, this modular toolset allows attackers to maintain a persistent, low-profile presence on high-value networks.

Key takeaways

🕸️ Living Off the Land: PeckBirdy utilizes JScript to execute via legitimate system binaries (LOLBins), like MSHTA, allowing it to bypass traditional endpoint security controls and stay hidden in plain sight.

🎭 Deceptive Delivery: The campaign (tracked as SHADOW-VOID-044) uses injected scripts on login pages and fake Google Chrome update prompts to trick users into downloading modular malware.

📦 Modular Arsenal: The framework acts as a delivery system for advanced backdoors like HOLODONUT and MKDOOR, which enable full system control, data exfiltration, and cookie theft.

🕵️ Advanced Evasion: By employing dynamically generated, runtime-injected code, PeckBirdy leaves minimal file artifacts, making forensic analysis and detection a significant challenge for incident responders.

🛡️ Defensive Priority: Security teams should prioritize monitoring for unusual parent-child process relationships involving script interpreters and restrict unauthorized execution of JScript and VBScript.

🔗 [Source](https://www.trendmicro.com/en_us/research/26/a/peckbirdy-script-framework.html)

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
