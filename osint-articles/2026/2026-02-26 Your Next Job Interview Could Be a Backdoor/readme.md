# Your Next Job Interview Could Be a Backdoor

A sophisticated cyber campaign is targeting software developers by hiding malware within fake Next.js "technical assessment" repositories. By weaponizing standard development workflows, attackers are successfully gaining Remote Code Execution (RCE) on developer machines to exfiltrate sensitive environment variables and API keys.

Key takeaways

🚨 Triggered on Open: The attack leverages VS Code’s tasks.json with runOn: "folderOpen", meaning malicious scripts can execute the moment you open the project, before you even run a single command.

🔒 Stealthy Persistence: By embedding loaders in npm run dev scripts and .env files, the malware runs in-memory, polling C2 servers for tasks while avoiding traditional disk-based detection.

🛡️ Isolate Your Tests: Treat every recruitment repository as "untrusted." Always review coding assessments in a sandboxed VM or containerized environment rather than on your primary machine.

💡 Hardening Best Practices: Enforce "Restricted Mode" in VS Code by default and implement Attack Surface Reduction (ASR) rules to prevent unauthorized Node.js processes from spawning malicious shells.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/02/24/c2-developer-targeting-campaign/)

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
