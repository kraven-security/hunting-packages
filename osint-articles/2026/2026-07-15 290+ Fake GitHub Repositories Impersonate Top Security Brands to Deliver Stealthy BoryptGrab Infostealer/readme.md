# 290+ Fake GitHub Repositories Impersonate Top Security Brands to Deliver Stealthy BoryptGrab Infostealer 

Researchers discovered over 290 fake GitHub repositories impersonating trusted brands to deliver the BoryptGrab infostealer. Attackers lure users into downloading malicious payloads that utilize DLL side-loading to steal credentials, cryptocurrency wallets, and messaging tokens.

Key takeaways

**🎯 Target**: Developers, IT administrators, and security professionals seeking software utilities, cryptocurrency wallets, or developer tools across corporate and personal environments.

**💡 Insight**: This campaign exploits platform trust through deceptive GitHub repositories with hidden redirect links. Users are directed to spoofed download pages where malware uses DLL side-loading to execute a trojanized libcurl.dll. The payload then runs 11 modules to steal browser credentials, cryptocurrency wallets, and messaging tokens.

**☑️ Recommendation 1**: Establish strict software acquisition guidelines, mandating that all utility, onboarding, and testing tools be downloaded exclusively from validated vendor domains rather than external links hosted inside GitHub repositories.

**☑️ Recommendation 2**: Update endpoint monitoring rules to alert on suspicious DLL side-loading behaviors, specifically flagging execution from downloads or temp folders, and anomalous child processes spawned by legitimate utilities like gup.exe.

**☑️ Recommendation 3**: Secure developer environments and CI/CD pipelines by enforcing strict role-based access control, monitoring authorized repository permissions, and proactively blocking connections to newly registered domains associated with fake software lures.

🔗 [Source](https://arcticwolf.com/resources/blog/fake-github-repositories-deliver-boryptgrab-lineage-infostealer/)

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
