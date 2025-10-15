# Malicious VS Code Extensions Steal Crypto and Source Code

A persistent threat actor known as "TigerJack" is publishing malicious extensions on the Visual Studio Code and OpenVSX marketplaces, designed to steal cryptocurrency, exfiltrate source code, and create backdoors on developers' systems.

Key takeaways:

🔒 Deceptive Tactics: The attacker uses multiple accounts and creates convincing but fake developer profiles to lure users into downloading the malicious extensions.

🛡️ Broad Capabilities: The malware can steal source code in real-time, inject crypto miners, and execute arbitrary code on the compromised machine.

💡 Ongoing Threat: Even when the malicious extensions are removed, the attacker republishes them under new names, making this an ongoing threat.

🌐 Open Source at Risk: The incident highlights the security challenges facing open-source marketplaces and the need for developers to be vigilant.

🔗 [Source](https://www.koi.ai/blog/tiger-jack-malicious-vscode-extensions-stealing-code)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-extentions.txt`: List of malicious OpenVSX extensions IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
