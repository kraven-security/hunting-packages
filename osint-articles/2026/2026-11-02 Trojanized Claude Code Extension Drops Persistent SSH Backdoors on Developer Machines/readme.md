# Trojanized Claude Code Extension Drops Persistent SSH Backdoors on Developer Machines

Attackers distributed a poisoned build (v2.1.313) of Anthropic's Claude Code extension through the Cursor Marketplace, deploying a stealthy, multi-stage SSH backdoor across developer workstations. The malicious package harvests sensitive developer environment credentials and establishes persistent reverse shells that survive standard extension uninstallation.

Key takeaways:

**🎯 Target**: Software developers and engineering teams using the Cursor IDE who installed or auto-updated the `anthropic.claude-code` extension on macOS, Linux, or Windows during the 11-hour distribution window.

**💡 Insight**: The payload goes far beyond basic token harvesting; it systematically maps sensitive environment variable names (such as `AWS`, `GCP`, `TOKEN`, and `KEY`), injects an unauthorized `svc-telemetry` SSH key, and writes persistent OS-level tasks (LaunchAgents, cron jobs, and scheduled tasks), meaning simply uninstalling the extension leaves the backdoor fully functional.

**☑️ Recommendation 1**: Immediately audit `~/.ssh/authorized_keys` for unauthorized entries labeled `svc-telemetry`, inspect persistence paths (such as `~/.config/.smt` and `com.apple.sysmond.plist`), and block all egress traffic to the command-and-control IP `134.209.82.225`.

**☑️ Recommendation 2**: Immediately revoke and rotate all secrets, cloud provider credentials, SSH keys, and Git tokens residing on or accessed by affected machines from a clean, isolated host.

**☑️ Recommendation 3**: As a long-term architectural defense, implement centralized developer endpoint posture management (EDR/DevSecOps) and disable unverified third-party IDE marketplace auto-updates to prevent untrusted extensions from executing unvetted code.

🔗 [Source](https://opensourcemalware.com/blog/trojanized-claude-code-extension-plants-persistent-ssh-backdoor)

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
