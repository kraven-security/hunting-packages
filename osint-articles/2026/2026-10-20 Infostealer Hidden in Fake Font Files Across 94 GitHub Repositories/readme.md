# Infostealer Hidden in Fake Font Files Across 94 GitHub Repositories

Researchers uncovered a second-stage evolution of the GhostAction supply chain campaign that copies North Korea’s PolinRider tradecraft to weaponize compromised GitHub repositories with malicious scripts disguised as font files. By abusing automated VS Code tasks, the malware silently runs on developer workstations to harvest cloud, AI, and SSH credentials while establishing persistent cron-job backdoors.

Key takeaways:

**🎯 Target:** Software developers, open-source maintainers, and DevOps engineers using VS Code who maintain or clone any of the 94 compromised GitHub repositories.

**💡 Insight:** The threat actor mimicked DPRK techniques by disguising a Node.js credential harvester as a web font (`fa-solid-400.woff2`) executed automatically via a hidden `.vscode/tasks.json` configuration, while installing a local crontab backdoor (`#ghc2`) that remains active on the developer's system even after the malicious repository files and CI workflows are deleted.

**☑️ Recommendation 1:** Check developer machines immediately for persistence by reviewing scheduled jobs (`crontab -l` on macOS/Linux) for any lines tagged `#ghc2` or referencing unknown remote IP addresses, and remove them promptly.

**☑️ Recommendation 2:** Set `task.allowAutomaticTasks` to `off` in VS Code workspace settings to prevent untrusted repositories from executing commands automatically, and assume compromise for all SSH keys, cloud tokens, and AI API keys (such as Claude and Gemini) if an affected repo was opened.

**☑️ Recommendation 3:** Mandate phishing-resistant Multi-Factor Authentication (FIDO2/WebAuthn passkeys) for all code-hosting accounts, enforce branch protection rules requiring code-owner approval for any `.github/workflows` or `.vscode` modifications, and deploy automated pre-commit secret scanning to mitigate credential exposure.

🔗 [Source](https://opensourcemalware.com/blog/ghostaction-copycats-polinrider-by-hiding-a-stealer-in-a-fake-font-file)

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
