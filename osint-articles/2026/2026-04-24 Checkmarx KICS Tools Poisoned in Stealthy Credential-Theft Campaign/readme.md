# Checkmarx KICS Tools Poisoned in Stealthy Credential-Theft Campaign

Checkmarx KICS Docker images and VS Code extensions were compromised by "TeamPCP" to steal developer credentials and GitHub tokens. This supply chain attack injects malicious workflows into enterprise repositories to facilitate further propagation.

Key takeaways

🎯 Target: DevOps engineers and developers utilizing Checkmarx KICS for infrastructure-as-code (IaC) scanning and associated VS Code extensions.

💡 Insight: The malware establishes persistence by injecting a rogue workflow (format-check.yml) into any repository it can reach and exfiltrates data to public GitHub repositories using Dune-themed naming conventions like "Shai-Hulud."

☑️ Recommendation 1: (Immediate) Revert to known-safe versions of Checkmarx KICS and VS Code extensions, and immediately rotate all environment secrets, including GitHub tokens, npm credentials, and cloud API keys.

☑️ Recommendation 2: (Short-term) Conduct a forensic audit of GitHub Action logs for unauthorized workflow executions or unexpected artifact creations that may indicate an active compromise.

☑️ Recommendation 3: (Long-term) Implement "Pinning by Digest" for all CI/CD dependencies; pull Docker images and GitHub Actions by their immutable SHA-256 hashes rather than mutable tags like :latest.

🔗 [Source](https://socket.dev/blog/checkmarx-supply-chain-compromise)

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
