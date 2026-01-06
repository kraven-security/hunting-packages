# Loophole in VS Code Marketplace Allows Malicious Extension Name Squatting

A loophole has been discovered in the Visual Studio Code (VS Code) Marketplace that allows threat actors to reuse the names of legitimate but unpublished or removed extensions. This could lead to developers unknowingly installing malware disguised as a trusted tool.

Key takeaways:

🔒 Name Reuse: Threat actors can claim the names of previously legitimate but now-removed VS Code extensions, bypassing the platform's unique naming policy.

🚨 Risk of Impersonation: This loophole makes it possible for malicious extensions to impersonate trusted, albeit discontinued, tools, increasing the likelihood of successful social engineering.

💡 Developer Deception: Developers searching for a previously used extension might be tricked into installing a malicious version, compromising their development environment.

🛡️ Supply Chain Threat: This represents a significant software supply chain risk, as a compromised IDE can lead to credential theft, code tampering, and further network infiltration.

🌐 Verification is Key: Developers should be extra vigilant, verify the publisher, and check for any signs of suspicious activity before installing or reinstalling extensions, especially those that have been unlisted and then reappear.

🔗 [Source](https://www.reversinglabs.com/blog/malware-vs-code-extension-names)

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
