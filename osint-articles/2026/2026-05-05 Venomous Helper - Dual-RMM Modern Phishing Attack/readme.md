# Venomous Helper: Dual-RMM Modern Phishing Attack

A sophisticated new phishing campaign dubbed "Venomous Helper" is bypassing traditional browser security by tricking users into manually executing malicious PowerShell commands. Disguised as a "browser update" or "fix" for viewing content, this campaign utilizes the "ClickFix" technique to deploy a JavaScript-based backdoor that grants attackers persistent access to compromised Windows environments.

**Key takeaways**

🎯 **Target**: General Windows users globally, particularly those navigating high-traffic media-sharing and adult content websites where "missing codec" or "browser error" lures are most effective.

💡 **Insight**: This campaign employs the "ClickFix" social engineering tactic, which manipulates the victim into copying a malicious command and pasting it directly into their PowerShell terminal, effectively turning the user into the malware installer and bypassing nearly all browser-level sandboxing and web filters.

☑️ **Recommendation 1**: (Immediate) Configure PowerShell "Constrained Language Mode" and enable "Script Block Logging" (Event ID 4104\) to detect and neutralize the obfuscated commands used in these manual execution attacks.

☑️ **Recommendation 2**: (Short-term) Conduct targeted user awareness training specifically highlighting the danger of "Copy-Paste" lures; emphasize that legitimate software updates (Chrome, Edge, etc.) will never require a user to manually run commands in a terminal.

☑️ **Recommendation 3**: (Long-term) Implement the Principle of Least Privilege (PoLP) by restricting administrative rights for standard users and utilizing AppLocker or Windows Defender Application Control (WDAC) to prevent unauthorized scripts from running in sensitive directories. 

🔗 [Source](https://www.securonix.com/blog/venomous-helper-phishing-campaign)

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
