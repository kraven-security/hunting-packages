# EtherHiding Evolves: Blockchain Dead Drops and Covert WebRTC Channels Drive Massive ClickFix Campaign

A cyber campaign compromised 5,400+ small-business websites using BNB Smart Chain testnet contracts as payload repositories for ClickFix malware. It abuses WebRTC peer connections to create covert, encrypted C2 channels that bypass web proxies.

Key takeaways

**🎯 Target**: Small-business websites (primarily WordPress and PrestaShop) across more than 2,200 organizations worldwide and their site visitors.

**💡 Insight**: Attackers store malware payloads inside immutable blockchain smart contracts as "dead drops" and abuse WebRTC by hand-writing connection responses to bypass signaling servers and open stealthy, uninspectable UDP communications.

**☑️ Recommendation 1**: Block access to the entire BNB Smart Chain (BSC) testnet RPC endpoint pool across your network to disrupt payload retrieval.

**☑️ Recommendation 2**: Educate users and enforce endpoint controls against ClickFix tactics, specifically warning against executing pasted PowerShell scripts from clipboard prompts.

**☑️ Recommendation 3**: Implement non-web traffic monitoring to detect anomalous WebRTC peer connections and non-HTTP UDP channels that evade standard web security gateways. 

🔗 [Source](https://www.netskope.com/blog/malware-on-the-blockchain-an-ongoing-campaigns-new-webrtc-twist)

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
