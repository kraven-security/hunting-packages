# Active "Shai-Hulud" Supply Chain Attack Compromises Keyv & 400+ NPM Packages Spanning 2B+ Installs

Attackers hijacked a lead maintainer's GitHub account to compromise `keyv` and related npm libraries. They injected a credential-stealing worm with legitimate GitHub Actions provenance to harvest secrets from CI/CD runners and local environments.

Key takeaways

**🎯 Target**: Software developers, DevOps engineering teams, and CI/CD build environments utilizing open-source npm packages such as `keyv`, `flat-cache`, `file-entry-cache`, and `cacheable-request`.

**💡 Insight**: Because attackers committed malicious lifecycle scripts (`preinstall`) directly to the maintainer's GitHub repository, the poisoned npm packages were built and published with legitimate, signed build attestations via GitHub Actions, bypassing basic provenance checks.

**☑️ Recommendation 1**:Pin or downgrade all affected npm packages to clean legacy releases, isolate impacted developer machines or build runners, and aggressively rotate all exposed credentials (including npm tokens, GitHub PATs, AWS credentials, Kubernetes tokens, and Vault secrets).

**☑️ Recommendation 2**:Audit CI/CD runners and local developer hosts for backdoor persistence mechanisms and purge compromised package artifacts from internal registries and local caches.

**☑️ Recommendation 3**: Enforce dependency firewalls and automated package inspection tools that restrict or analyze open-source `preinstall` and `postinstall` lifecycle scripts before execution in build systems. 

🔗 [Source](https://www.aikido.dev/blog/keyv-and-friends-compromised-in-npm-supply-chain-attack)

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
