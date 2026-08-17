# Massive npm Supply Chain Attack Exposes Credentials via Self-Propagating Worm 

Microsoft identified 'ChainDrop,' a supply chain attack infecting over 400 npm packages with the 'Mini Shai-Hulud' credential-stealing worm. This malware uses preinstall hooks to exfiltrate cloud and infrastructure credentials and autonomously self-propagates to maintain persistence.

Key takeaways:

**🎯 Target**: Developers and continuous integration/continuous delivery (CI/CD) environments utilizing enterprise software ecosystems like keyv and flat-cache.

**💡 Insight**: The malware demonstrates highly advanced worm-like capabilities; it uses stolen npm publishing tokens to download a publisher's latest package, inject itself, increment the patch version, and autonomously republish the malicious update, all without triggering source code commits.

**☑️ Recommendation 1**: Update the npm CLI to version 12 and utilize the min-release-age feature to prevent the immediate installation of newly published, potentially malicious packages.

**☑️ Recommendation 2**: Immediately purge npm and yarn caches on all developer endpoints and build hosts, and conduct a thorough review of dependency trees and artifact repositories to identify and remove compromised versions.

**☑️ Recommendation 3**: If a compromised version was imported, perform a complete rotation of all credentials and secrets (including cloud and GitHub tokens) from a known-clean host, as the malware actively enumerates and exfiltrates these credentials.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/08/04/chaindrop-supply-chain-compromise-anatomy-self-propagating-worm/?msockid=1a63971b30c56eb437ea83ca31756f27)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-hunting-queries.txt`: List of Microsoft Defender XDR advanced threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
