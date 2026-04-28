# 73 Malicious VS Code Extensions Uncovered in Marketplace Hijack

Cybersecurity researchers have identified dozens of fraudulent Visual Studio Code extensions designed to impersonate legitimate tools and compromise developer environments. These "sleeper" agents were designed to remain dormant and appear legitimate to evade initial security screenings, then potentially activate to compromise developer environments. 

Key takeaways

🎯 Target: Developers and DevOps engineers using VS Code alternatives, such as VSCodium or Cursor, that rely on the Open VSX Registry for their plugin ecosystems.

💡 Insight: Unlike immediate "typosquatting" attacks, these extensions used a delayed-execution strategy: they functioned normally for extended periods to build a positive reputation and bypass automated scanners before downloading malicious payloads.

☑️ Recommendation 1: (Short-term) Audit all IDE extensions installed via Open VSX; immediately remove any plugins from unverified publishers or those that have not been updated recently, even if they appear to be functioning correctly.

☑️ Recommendation 2: (Long-term) Establish a "Verified Only" plugin policy and integrate Software Composition Analysis (SCA) tools into the developer workflow to monitor for suspicious outbound connections or unauthorized script executions within the IDE.

🔗 [Source](https://socket.dev/blog/73-open-vsx-sleeper-extensions-glassworm)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-extensions.txt`: List of malicious extensions in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
