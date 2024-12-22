# BellaCPP: Discovering a new BellaCiao variant written in C++

Kaspersky researchers have uncovered BellaCPP, a C++ variant of the known .NET malware BellaCiao, used by the Charming Kitten threat actor. This new version increases stealth and persistence on Windows systems.

Key takeaways:

🔄 From .NET to C++: BellaCPP represents a shift from the original BellaCiao, which was written in .NET, to a C++ implementation for improved performance and evasion.
🖥️ Windows Service: The malware operates as a Windows service, using the same domain generation algorithm and communication methods to maintain persistence.
🧑‍💻 Charming Kitten Link: There's medium-to-high confidence linking BellaCPP to the Iranian state-sponsored group Charming Kitten, based on shared tactics and infrastructure.
🔍 Discovery Context: Found during an investigation of a machine already compromised by BellaCiao, indicating an escalation in the attack strategy.
🛡️ Analysis Challenges: The exact functionality of some components like the "SecurityUpdate" function remains speculative due to missing DLLs in the analysis.

## Package Content
- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `<sigma-rule>.yml`: Sigma rule(s) to detect threat described in the article. Sigma rules are vendor agnostic detection or threat hunting rules you can convert to your security tooling using [sigconverter](https://sigconverter.io/) or the [Sigma CLI tool](https://github.com/SigmaHQ/sigma-cli/).
- `<yara-rule>.yar`: YARA rule(s) to detect or hunt for malware described in the article.
- *`other`*: Other detection or threat hunting opporutnities.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt: 
> `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking. 