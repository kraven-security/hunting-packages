# Malicious Go Module Found Harvesting Passwords and Deploying Backdoors

Researchers have uncovered a malicious Go module, github[.]com/xinfeisoft/crypto, which impersonates the legitimate library to steal passwords and install the Rekoobe Linux backdoor. This supply chain attack targets developers by hooking into sensitive credential-reading functions to gain persistent, unauthorized access to systems.

Key takeaways:

🔒 Namespace Confusion Attack: The module exploits "lookalike" naming to trick developers into adding it to their dependency graphs, mimicking the official golang.org/x/crypto GitHub mirror.

🔑 Credential Theft at the Edge: By injecting malicious code into the ReadPassword() function, the malware intercepts interactive secrets and passwords directly from the terminal.

🛡️ Multi-Stage Persistence: The attack chain uses a Linux stager to modify SSH authorized_keys and loosen firewall rules before delivering the Rekoobe trojan for remote command execution.

💡 Immediate Defense Action: Security teams should audit dependency manifests for unauthorized modules and prioritize hardware security keys or authenticator apps over terminal-based password prompts.

🔗 [Source](https://socket.dev/blog/malicious-go-crypto-module-steals-passwords-and-deploys-rekoobe-backdoor)

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
