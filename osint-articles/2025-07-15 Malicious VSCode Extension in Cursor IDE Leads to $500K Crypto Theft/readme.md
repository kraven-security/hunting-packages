# Malicious VSCode Extension in Cursor IDE Leads to $500K Crypto Theft

A malicious extension disguised as a legitimate tool in the Cursor AI IDE, a fork of VSCode, was used to steal $500,000 in cryptocurrency from a developer. This incident highlights the growing threat of supply chain attacks targeting developers through trusted tools and platforms.

Key takeaways:

🚨 Trojanized Extension: A fake "Solidity Language" extension on the Open VSX registry was used to deploy malware, including a remote access trojan (RAT) and an information stealer.

🛡️ Marketplace Manipulation: The attackers inflated download counts to make their malicious extension appear legitimate and trustworthy to unsuspecting developers.

💡 Developer Due Diligence: This attack underscores the critical need for developers to verify the authenticity and publishers of extensions before installation, even from seemingly secure marketplaces.

🌐 Beyond Official Stores: The malicious extension was found on an alternative marketplace, reminding users that threats can exist outside of official, more tightly controlled repositories.

🔒 Credential Theft: The attack aimed to steal sensitive information like credentials, authentication cookies, and cryptocurrency wallets, leading to significant financial loss.

🔗 [Source](https://securelist.com/open-source-package-for-cursor-ai-turned-into-a-crypto-heist/116908/)

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
