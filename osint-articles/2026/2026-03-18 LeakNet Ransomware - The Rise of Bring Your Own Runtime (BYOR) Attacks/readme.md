# LeakNet Ransomware: The Rise of "Bring Your Own Runtime" (BYOR) Attacks

The LeakNet ransomware group is evolving its tactics, moving away from traditional malware loaders to a "Bring Your Own Runtime" (BYOR) strategy. By abusing the legitimate, signed Deno runtime for JavaScript/TypeScript, attackers can bypass application blocklists and execute malicious code directly in system memory.

Key takeaways:

🛠️ Abusing Legitimate Tools: Instead of a custom loader that might trigger alerts, LeakNet installs the signed Deno executable to run malicious scripts, allowing them to slip past filters that only block "untrusted" binaries.

🔒 Fileless Stealth: Malicious payloads are decoded and executed entirely in memory, leaving minimal forensic artifacts on the disk and significantly lowering the chances of detection by standard security tools.

🚨 ClickFix Deception: The attack relies on "ClickFix" social engineering—fake browser prompts that trick users into running malicious PowerShell or VBS scripts to initiate the infection.

🛡️ Actionable Defense: Organizations must monitor for Deno or similar runtimes (like Node.js) appearing in non-developer environments and audit for abnormal outbound traffic to Amazon S3 buckets used for exfiltration.

🔗 [Source](https://reliaquest.com/blog/threat-spotlight-casting-a-wider-net-clickfix-deno-and-leaknets-scaling-threat)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
