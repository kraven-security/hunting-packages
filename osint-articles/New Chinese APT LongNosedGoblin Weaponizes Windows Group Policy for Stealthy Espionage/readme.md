# New Chinese APT "LongNosedGoblin" Weaponizes Windows Group Policy for Stealthy Espionage

Researchers have uncovered a previously undocumented China-aligned threat cluster, LongNosedGoblin, targeting governmental entities in Southeast Asia and Japan by abusing core Windows management tools. By leveraging native Group Policy for malware deployment and popular cloud services for command and control (C&C), this actor effectively blends into legitimate network telemetry to conduct long-term cyber espionage.

Key takeaways:

🏢 Group Policy Abuse: The group utilizes Windows Group Policy as a native deployment mechanism to propagate malware across compromised networks, allowing them to move laterally without triggering traditional security alerts.

☁️ Cloud-Native C&C: Custom tools such as "NosyDoor" and "NosyStealer" hijack legitimate cloud services—including Microsoft OneDrive, Google Drive, and Yandex Disk—to mask command-and-control traffic as routine user activity.

🛠️ Modular "Nosy" Toolset: The adversary employs a sophisticated suite of .NET applications specifically designed to harvest browser history, log keystrokes, and exfiltrate encrypted data archives.

🕵️ Targeted Execution Guardrails: To maintain a low forensic footprint, the malware uses AppDomainManager injection and execution guardrails to ensure it only activates on specific, high-value target machines.

🛡️ Actionable Defense: Security teams are urged to monitor for unauthorized changes to Group Policy Objects (GPOs) and audit outbound traffic to personal cloud storage accounts to detect potential exfiltration.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/longnosedgoblin-tries-sniff-out-governmental-affairs-southeast-asia-japan/)

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
