# Malicious NPM Packages Deploy Cross-Platform Infostealer

A sophisticated campaign has been identified using 10 malicious, typosquatted NPM packages to deliver a potent information stealer. This malware is designed to harvest sensitive credentials from developers across Windows, macOS, and Linux systems.

Key takeaways:

🚨 Typosquatting Threat: The packages impersonate popular libraries like discord.js, ethers.js, nodemon, and typescriptjs to trick developers. Always double-check package names before installation.

🛡️ Multi-Stage Attack: The malware uses a postinstall script to launch in a new terminal, displays a fake CAPTCHA to appear legitimate, and uses four layers of obfuscation to evade detection.

💻 Cross-Platform Payload: A large 24MB PyInstaller-packaged binary (data_extracter) is downloaded, enabling it to attack Windows, macOS, and Linux environments.

🔒 Credential Theft: The stealer's primary goal is to harvest credentials from system keyrings (e.g., macOS Keychain, Windows Credential Manager), browser data, SSH keys, and application config files.

💡 Immediate Action: Audit your dependencies for the malicious packages (e.g., deezcord.js, nodemonjs, react-router-dom.js). Any system with these installed should be considered fully compromised.

🔗 [Source](https://socket.dev/blog/10-npm-typosquatted-packages-deploy-credential-harvester)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `malicious-packages.txt`: List of malicious NPM packages.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
