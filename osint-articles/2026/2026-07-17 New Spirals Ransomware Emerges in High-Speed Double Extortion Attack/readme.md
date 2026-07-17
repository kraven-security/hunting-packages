# New "Spirals" Ransomware Emerges in High-Speed Double Extortion Attack 

New 'Spirals' ransomware, a Rust-based threat, recently compromised a network in under 24 hours using advanced lateral movement and tunneling for rapid data exfiltration and persistence. This high-speed double-extortion tactic poses imminent risks to other organizations.

Key takeaways:

**🎯 Target**: An IT services company located in South Asia was the primary victim of this targeted attack in June 2026\.

**💡 Insight**: The threat actors moved with terrifying speed, dropping the Spirals payload, dumping credentials, and actively disabling endpoint security tools across the network less than 24 hours after initially breaching an internet-facing IIS web server.

**☑️ Recommendation 1**: Immediately audit and secure all internet-facing servers, especially IIS web servers, hunting for unauthorized ASP.NET web shells or suspicious scheduled tasks used to establish an initial foothold.

**☑️ Recommendation 2**: Implement strict monitoring and tamper-protection on endpoint security products like Windows Defender, ensuring your security teams are instantly alerted if real-time scanning is disabled or threat definitions are removed.

**☑️ Recommendation 3**: Enforce the principle of least privilege to restrict the lateral movement of legitimate administrative tools like PsExec and WMI, and maintain isolated, offline backups of your critical environment to thwart double extortion demands.

🔗 [Source](https://www.security.com/threat-intelligence/ransomware-spirals-extortion)

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
