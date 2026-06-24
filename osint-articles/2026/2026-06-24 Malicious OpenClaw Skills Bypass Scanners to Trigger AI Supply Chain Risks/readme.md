# Malicious OpenClaw Skills Bypass Scanners to Trigger AI Supply Chain Risks 

Palo Alto Networks Unit 42 identified five malicious OpenClaw skills that bypassed security scanners. These rogue packages exploited the agent's broad local permissions to deploy macOS infostealers and execute fraudulent financial schemes through natural-language manipulation.

Key takeaways

**🎯 Target**: Organizations, AI developers, and enterprise environments deploying the open-source OpenClaw autonomous agent framework or integrating extension modules from public repositories.

**💡 Insight**: These 'agentic threats' bypass scanners by exploiting a lack of permission isolation. Skills inherit the agent's full system access, allowing attackers to manipulate AI decision loops or use junk text to evade detection.

**☑️ Recommendation 1**: Conduct an immediate review and inventory of all third-party modules running within your local LLM architectures, comparing the raw natural-language instructions against their declared YAML manifests to isolate unapproved environment variable access or hidden network-send capabilities.

**☑️ Recommendation 2**: Restrict and gate the deployment of all marketplace extension modules, ensuring that no third-party code can execute in a production context without passing through strict, sandboxed pre-approval checks.

**☑️ Recommendation 3**: Over the long term, transition away from implicit trust models by redesigning autonomous agent environments with runtime isolation (such as containerization) and strict network egress blocks to automatically stop silent credential exfiltration. 

🔗 [Source](https://unit42.paloaltonetworks.com/openclaw-ai-supply-chain-risk/)

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
