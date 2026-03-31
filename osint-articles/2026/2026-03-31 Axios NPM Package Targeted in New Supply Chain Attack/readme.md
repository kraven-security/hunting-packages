# Axios NPM Package Targeted in New Supply Chain Attack

A critical security alert has been issued for the popular Axios HTTP client after a compromise was detected in its latest releases. Multiple versions have been found to import a malicious dependency that executes remote code on Windows, Linux, and macOS systems. This incident highlights the ongoing fragility of the software supply chain and the risks of automated updates.

Key takeaways

🚨 Affected Versions: The compromise specifically impacts axios versions 0.30.4 and 1.14.1. If your project uses these versions, it is currently importing plain-crypto-js (v4.2.1), a malicious package.

🦠 Malicious Behavior: The injected dependency contains an obfuscated payload in setup.js that connects to a remote server (sfrclak[.]com) to download and execute OS-specific malware.

🛡️ Immediate Mitigation: Security teams must uninstall the affected versions immediately and roll back to a known safe release.

🔒 Credential Rotation: Because the malware can exfiltrate environment variables, you should rotate all API keys, secrets, and credentials stored on any machine or CI/CD environment where the poisoned versions were installed.

🔗 [Source](https://socket.dev/blog/axios-npm-package-compromised)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-packages.txt`: List of compromised NPM packages.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
