# Massive Supply Chain Attack Targets Gluestack npm Packages, Endangering 960K Weekly Downloads

A supply chain attack has compromised 17 Gluestack npm packages, impacting over 960K weekly downloads with malicious code acting as a remote access trojan. Developers must urgently remove affected packages and roll back to secure versions to prevent data theft and system control.

Key takeaways:

🕵️ Widespread Compromise: cyber security firm Aikido Security discovered that 17 of 20 Gluestack @react-native-aria npm packages, with ~960,000 weekly downloads, were injected with malicious code in the lib/commonjs/index.js file, functioning as a remote access trojan (RAT).

🦠 Malware Capabilities: The malicious code enables attackers to execute shell commands, capture screenshots, and upload files from infected systems, posing significant risks to developers and CI/CD pipelines that utilize these packages.

📧 Covert Communication: The attack utilizes hardcoded SMTP credentials to establish a connection to an attacker-controlled mailbox, enabling data exfiltration and remote control, with new compromised versions being published as recently as June 7, 2025.

🛡️ Mitigation Actions: Developers are urged to remove the affected packages, roll back to uncompromised versions (all fully deprecated), and implement version pinning, dependency scanning, and file integrity monitoring to prevent further infections.

⚠️ Broader Context: This attack follows a pattern of supply chain threats targeting open-source ecosystems, with similar incidents recently hitting npm, PyPI, and Ruby, highlighting the growing risk to software development pipelines.

🔗 https://buff.ly/ACxu3Lu

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-packages.txt`: List of malicious packages in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
