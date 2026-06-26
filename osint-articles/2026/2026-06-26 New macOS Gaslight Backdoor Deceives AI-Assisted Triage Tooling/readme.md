# New macOS Gaslight Backdoor Deceives AI-Assisted Triage Tooling 

Threat researchers have discovered "macOS.Gaslight," a nation-state Rust backdoor that harvests keychain data. Its primary novelty is an embedded 38-message prompt-injection cascade designed to trick LLM-based triage tools into aborting code analysis.

Key takeaways

**🎯 Target**: Cyber threat intelligence (CTI) platforms, automated security operations centers (SOCs), and enterprise macOS endpoints, specifically targeting automated pipelines that rely on AI assistants to accelerate malware reverse-engineering workflows.

**💡 Insight**: Rather than writing complex code to bypass technical sandbox restrictions, macOS.Gaslight attacks the cognitive logic of the analyst's tooling by mimicking an LLM prompt scaffold; it feeds the AI triage engine fake system errors (such as token expirations and out-of-memory warnings) to force the automation into giving up on evaluating the file.

**☑️ Recommendation 1**: Harden AI-assisted security pipelines against adversarial inputs by enforcing strict data-instruction separation architectures. Security orchestration tools that process untrusted binary strings must treat sample metadata solely as structural data objects, ensuring that system prompts strictly forbid models from executing or responding to instructions embedded in analyzed payloads.

**☑️ Recommendation 2**: Supplement automated static analysis with proactive behavioral detection rules on endpoints. Security teams should deploy macOS detection policies that alert on unauthorized runtime execution of standalone CPython environments and audit persistence mechanisms for suspicious LaunchAgents masquerading inside official namespaces (e.g., watching for the label `com.apple.system.services.activity`).

🔗 [Source](https://www.sentinelone.com/labs/macos-gaslight-rust-backdoor-turns-prompt-injection-on-the-analyst-not-the-sandbox/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
