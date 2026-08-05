# "Evil Twin" Extensions Target Open VSX Registry to Compromise Developer Workspaces 

Threat actors are deploying malicious "evil twin" and typosquatted extensions on the Open VSX Registry, targeting developers using open-source and AI-driven IDEs like Cursor, Windsurf, and VSCodium. These rogue extensions execute under local user privileges to exfiltrate session tokens, personal access tokens (PATs), and sensitive source code directly from development environments.

Key takeaways:

**🎯 Target**: Developers and enterprise software engineering teams utilizing Open VSX-compatible IDEs, including VS Code, VSCodium, Cursor, and Windsurf.

**💡 Insight**: Attackers leverage namespace typosquatting and transitive manifest dependencies to silently inject malicious code into developer workflows after initial installation reviews have passed.

**☑️ Recommendation 1**: Perform an immediate audit of installed IDE extensions and remove unverified packages, confirming publisher identity and namespace authenticity.

**☑️ Recommendation 2**: Implement developer supply-chain security scanners to inspect extension manifests and automatically block unverified dependencies across local environments.

**☑️ Recommendation 3**: Enforce automated secret scanning and routine credential rotation for all Personal Access Tokens (PATs) and API keys stored on developer machines.

🔗 [Source](https://zerobec.com/blog/greatness-phaas-aitm-and-device-code-phishing)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-extensions.txt`: List of malicious extensions in the article by ID.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
