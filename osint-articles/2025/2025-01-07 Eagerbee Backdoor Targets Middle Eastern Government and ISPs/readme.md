# Eagerbee Backdoor Targets Middle Eastern Government and ISPs

The Eagerbee backdoor, with links to the Chinese threat group CoughingDown, has been deployed against government organizations and ISPs in the Middle East. This stealthy malware operates 24/7, collecting sensitive data.

Key takeaways:

😈 CoughingDown Connection: Kaspersky researchers suggest with medium confidence that Eagerbee is associated with the Chinese threat group CoughingDown.

🕵️‍♂️ Stealth and Persistence: The backdoor runs continuously, appearing as 'dllloader1x64.dll', and starts gathering system information like OS details and network addresses upon infection.

🔄 Global Threat: While currently targeting the Middle East, a similar attack chain was also observed in Japan, indicating the malware's global reach.

💻 Execution Method: Eagerbee uses a sophisticated method involving DLL hijacking through Windows services like Themes, SessionEnv, IKEEXT, and MSDTC to write its payload into memory.

📚 Capabilities: It has extensive capabilities, including executing commands at specified times, maintaining 24/7 operation, and communicating with command-and-control (C2) servers for further instructions.

🔗 https://securelist.com/eagerbee-backdoor/115175/

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
