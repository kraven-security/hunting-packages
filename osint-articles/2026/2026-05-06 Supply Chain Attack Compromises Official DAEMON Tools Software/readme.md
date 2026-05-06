# Supply Chain Attack Compromises Official DAEMON Tools Software

A sophisticated supply chain attack has been identified targeting DAEMON Tools, the popular disk imaging utility. Since April 8, 2026, official installers have been trojanized with a stealthy backdoor, allowing threat actors to hijack systems while hiding behind valid, developer-signed digital certificates.

**Key takeaways**

🎯 **Target**: While affecting thousands of users across 100+ countries, high-value payloads have specifically targeted government, scientific, manufacturing, and retail organizations.

💡 **Insight**: This attack is particularly dangerous because the malicious code is embedded within binaries signed with valid digital certificates from the developer (AVB Disc Soft). This allows the malware to bypass traditional perimeter defenses and "trust-based" security filters that often ignore signed software.

☑️ **Recommendation 1**: (Short-term) Immediate Software Audit. Organizations must identify all endpoints running DAEMON Tools versions 12.5.0.2421 through 12.5.0.2434. These machines should be isolated immediately and audited for unusual network traffic to the domain `env-check.daemontools[.]cc`.

☑️ **Recommendation 2**: (Short-term) Purge and Scan. For individual users and non-critical systems, uninstall the application entirely, then perform a comprehensive system scan with an up-to-date EDR or antivirus solution to detect persistent implants such as the "QUIC RAT."

☑️ **Recommendation 3**: (Long-term) Adopt Zero-Trust for Signed Binaries. Long-term, transition to a security model that monitors the *behavior* of all applications, regardless of their digital signature. Implement the principle of least privilege to ensure that even a compromised "trusted" utility cannot execute unauthorized shell commands or move laterally through your network.

🔗 [Source](https://securelist.com/tr/daemon-tools-backdoor/119654/)

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
