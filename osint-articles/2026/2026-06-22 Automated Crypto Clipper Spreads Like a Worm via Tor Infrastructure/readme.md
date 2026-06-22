# Automated Crypto Clipper Spreads Like a Worm via Tor Infrastructure 

Microsoft Security researchers have uncovered an advanced cryptocurrency clipper malware that uses worm-like propagation vectors to enable rapid lateral movement within localized networks. By routing its command-and-control (C2) communications exclusively through the Tor network, the malware maintains highly resilient, stealthy persistence and long-term operational control over compromised hosts.

Key takeaways

**🎯 Target**: Cryptocurrency investors, enterprise web3 accounting departments, and local corporate networks where shared network drives or cross-device communications are heavily utilized.

**💡 Insight**: Traditional clippers operate in isolation, but this strain features aggressive worm-like self-propagation techniques via network shares and removable media to continuously re-infect cleansed systems. Furthermore, by embedding a modular Tor client directly into its persistence mechanism, it successfully bypasses standard boundary firewalls, rendering traditional domain-based blocklists ineffective.

**☑️ Recommendation 1**: Immediately deploy endpoint detection rules to flag unexpected process execution involving embedded Tor proxies or unauthorized background loops interacting with onion routing nodes.

**☑️ Recommendation 2**: Audit and restrict lateral network movement protocols by disabling unauthenticated SMB v2/v3 shares, enforcing strict network segmentation, and blocking auto-run functionality for removable media to neutralize the worm-propagation mechanism.

**☑️ Recommendation 3**: Over the long term, transition to hardware-enforced clipboard security solutions or mandate multi-step, out-of-band destination address verification for all automated or manual corporate cryptographic asset transfers.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/06/17/crypto-clipper-uses-tor-worm-like-propagation-for-persistence-control/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-hunting-queries.kql`: List of Microsoft KQL threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
