# Malicious PyPI Package 'pycord-self' Steals Discord Auth Tokens from Developers

A malicious package named 'pycord-self' on PyPI has been caught stealing Discord authentication tokens from developers, with over 800 downloads so far. This incident underscores the ongoing risks of typosquatting in open-source ecosystems.

Key takeaways:

🚨 Malicious Package: 'pycord-self', a typosquatting package on PyPI, has been identified as a tool for stealing Discord authentication tokens.

💻 Developer Risk: This package targets developers, leveraging the trust placed in open-source platforms to execute its malicious activities.

🔐 Token Theft: Once installed, it can exfiltrate Discord tokens, potentially compromising both personal and professional accounts.

🌐 Widespread Exposure: With over 800 downloads, the impact could be significant, highlighting vulnerabilities in software supply chains.

🛑 Action Advised: Developers are urged to check their systems for this package and to use package verification tools to avoid similar threats in the future.

🔗 https://buff.ly/4hnuFT6 

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network-based indictors.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
