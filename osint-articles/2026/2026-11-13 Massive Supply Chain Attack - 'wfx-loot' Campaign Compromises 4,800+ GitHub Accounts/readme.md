# Massive Supply Chain Attack: 'wfx-loot' Campaign Compromises 4,800+ GitHub Accounts

A highly sophisticated threat actor is leveraging thousands of stolen GitHub credentials to silently inject the 'wfx-loot' secret stealer into tens of thousands of repositories. This fast-moving campaign targets GitHub Actions to harvest highly sensitive cloud credentials and API keys, then seamlessly erases its tracks.

Key takeaways:

**🎯 Target:** DevOps teams, developers, and organizations relying on GitHub Actions CI/CD pipelines, whose cloud credentials (AWS, Azure, GCP) and package-registry tokens are being actively targeted and exfiltrated.

**💡 Insight:** Attackers use an advanced "hit-and-run" evasion tactic by injecting a malicious script, stealing CI secrets, reverting the commit, and deleting workflow logs within seconds, making a missing workflow run one of the few reliable indicators of compromise.

**☑️ Recommendation 1:** Immediately audit your repositories for suspicious pull requests (such as "docs: dependency audit notes") or missing workflow run numbers, and proactively rotate any secrets, OIDC tokens, or cloud keys exposed in your CI pipelines.

**☑️ Recommendation 2:** Harden your software supply chain by strictly enforcing Multi-Factor Authentication (MFA) for all repository contributors, validating workflow integrity, and implementing continuous cloud posture monitoring to detect unauthorized IAM backdoors.

🔗 [Source](https://www.aikido.dev/blog/compromised-github-accounts-push-ci-secret-stealer-to-tens-of-thousands-of-repositories)

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
