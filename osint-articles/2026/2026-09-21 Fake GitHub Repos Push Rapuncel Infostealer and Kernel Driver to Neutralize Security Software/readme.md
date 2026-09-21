# Fake GitHub Repos Push "Rapuncel" Infostealer and Kernel Driver to Neutralize Security Software 

LastPass and Delphos Labs uncovered a widespread malware campaign using SEO-optimized GitHub repositories impersonating LastPass Authenticator and over 40 other popular brands to deliver a novel infostealer named Rapuncel. Distributed inside padded 148MB archives that bypass scanners, the malware deploys a Microsoft-signed kernel driver to disable 145 antivirus and EDR tools before exfiltrating browser credentials, crypto wallets, and session tokens.

Key takeaways

**🎯 Target**: Everyday internet users, IT professionals, enterprise software teams, and cryptocurrency holders searching for legitimate software downloads online.

**💡 Insight**: The campaign abuses GitHub's platform trust and DLL side-loading (`vsdbg.exe`) to execute a Microsoft-signed kernel driver (`Alinubx.sys`) that systematically terminates 145 security products, enabling Rapuncel to bypass Chrome- and Edge-app-bound encryption via process injection without triggering alerts.

**☑️ Recommendation 1**: Isolate any host that downloaded software from unverified GitHub links, and immediately rotate all saved browser credentials, password vaults, session tokens, and crypto keys from a known-clean device.

**☑️ Recommendation 2**: Update EDR and SIEM detection rules to alert on renamed `vsdbg.exe` execution, suspicious code injection into browser processes, and driver loads associated with `nvfsflt64.sys` or `Alinubx.sys`.

**☑️ Recommendation 3**: Enforce strict application whitelisting, keep Microsoft's Vulnerable and Malicious Driver Blocklist updated, and mandate that all corporate software installs originate strictly from official vendor domains rather than public code repositories.

🔗 [Source](https://blog.lastpass.com/posts/lastpass-delphos-report-rapuncel-infostealer)

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
