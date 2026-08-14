# Jewelbug APT Blends State Espionage with Crypto Fraud  

A China-based hackers-for-hire group known as Jewelbug is conducting massive espionage campaigns against government entities while simultaneously operating a lucrative cryptocurrency fraud business. Astonishingly, both of these parallel missions are administered from a single shared control panel and command-and-control infrastructure.

Key takeaways

**🎯 Target**: Jewelbug primarily targets government ministries, militaries, and state telecom providers across the Middle East, Southeast Asia, and South Asia. They also run a financially motivated operation targeting Chinese-speaking cryptocurrency users through fake exchange portals.

**💡 Insight**: The group leverages a highly sophisticated, browser-centric control framework called "XG-Web" alongside a malicious "PDF Viewer" browser extension. This advanced tooling can bypass browser sandboxing to execute native Windows commands, hijack user sessions in near real-time, and silently steal credentials.

**☑️ Recommendation 1**:  Immediately hunt for specific indicators of compromise (IOCs), such as the com.microsoft.runedge native messaging host registry key, and block known typosquatted C\&C domains.

**☑️ Recommendation 2**: Audit and restrict user permissions to prevent the installation of unauthorized or malicious browser extensions, such as the fraudulent PDF reader used in these attacks.

**☑️ Recommendation 3**: Enhance network traffic monitoring to detect anomalous Microsoft Graph API usage, as Jewelbug’s Antino backdoor specifically hides its command-and-control traffic inside legitimate Microsoft cloud services.

🔗 [Source](https://www.security.com/threat-intelligence/jewelbug-crypto-fraud-espionage)

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
