# Russian APT28 Hackers Deploy New "NotDoor" Outlook Backdoor

The notorious Russian state-sponsored group APT28 has unleashed a new stealthy backdoor called "NotDoor," specifically targeting Microsoft Outlook in NATO countries. This sophisticated malware allows attackers to exfiltrate data, upload files, and execute commands by monitoring incoming emails for a specific trigger word.

Key takeaways:

🔒 Stealthy Outlook Integration: NotDoor operates as an obfuscated VBA macro within Outlook, enabling it to monitor emails and await commands from the attackers, all while disabling macro security warnings to remain undetected.

🚨 DLL Side-Loading: The malware is deployed using a DLL side-loading technique via Microsoft's OneDrive executable, a method that helps it evade traditional security measures.

🛡️ Persistence is Key: NotDoor establishes persistence through Registry modifications and disables Outlook-related dialogue messages, ensuring it remains active and hidden on the compromised system.

🌐 Data Exfiltration: The backdoor supports commands to execute commands, exfiltrate files, and drop new files onto the victim's machine, with stolen data being sent to a Proton Mail address.

🔗 [Source](https://lab52.io/blog/analyzing-notdoor-inside-apt28s-expanding-arsenal/)

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
