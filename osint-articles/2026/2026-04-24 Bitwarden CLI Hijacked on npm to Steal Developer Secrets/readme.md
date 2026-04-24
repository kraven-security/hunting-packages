# Bitwarden CLI Hijacked on npm to Steal Developer Secrets

Researchers found a hijacked @bitwarden/cli (v2026.4.0) on npm that deploys a credential-stealer. Linked to "TeamPCP," it targets cloud, GitHub, and AI configs across workstations and CI/CD pipelines.

Key takeaways

🎯 Target: Developers, DevOps engineers, and automated pipelines utilizing the Bitwarden CLI for secret management and automation.

💡 Insight: The malware is unusually comprehensive, hunting for not just standard cloud keys (AWS/Azure/GCP), but also SSH material, shell histories, and modern AI/MCP configuration files (like Claude and Kiro settings) to maximize its reach across high-value developer assets.

☑️ Recommendation 1: (Immediate) Check your global npm installations for @bitwarden/cli version 2026.4.0. If found, uninstall it immediately and rotate ALL secrets on that machine, including GitHub PATs, npm tokens, AWS keys, and SSH identities.

☑️ Recommendation 2: (Short-term) Enforce the use of npm config set ignore-scripts true in CI environments to prevent malicious preinstall hooks from executing unauthorized scripts during package installation.

☑️ Recommendation 3: (Long-term) Implement software composition analysis (SCA) tools and internal package curation to block unverified updates to critical CLI dependencies and ensure only cryptographically signed packages are used in production.

🔗 [Source](https://research.jfrog.com/post/bitwarden-cli-hijack/)

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
