# KREMLIN Banking Trojan Hijacks Chromium Integrity Checks to Steal Session Tokens

Elastic Security Labs has uncovered a 15-month Brazilian banking malware campaign (REF9334) that deploys the "KREMLIN" toolkit to forge browser integrity checks and force-install rogue extension payloads. By combining multi-stage JavaScript loaders with Ethereum smart contracts as dead-drop resolvers, the malware stealthily harvests sensitive credentials and active banking session tokens.

Key takeaways:

**🎯 Target**: Brazilian banking customers and financial institutions using Chromium-based browsers, specifically Google Chrome and Microsoft Edge.

**💡 Insight**: KREMLIN bypasses Chromium's native anti-tampering defenses by extracting App-Bound encryption keys, manipulating `Secure Preferences` files, and recalculating required HMACs to silently load unapproved extensions without user intervention.

**☑️ Recommendation 1**: Audit endpoint persistence mechanisms for suspicious scheduled tasks running Node.js binaries (such as fake `MicrosoftNodeRuntimeUpdater` entries) and inspect browsers for unauthorized extensions like "AVSync System Inc."

**☑️ Recommendation 2**: Implement EDR behavioral rules that monitor and alert on non-standard processes accessing Chromium local state files, modifying `Secure Preferences`, or interacting with public smart contract RPC endpoints for C2 resolution.

🔗 [Source](https://www.elastic.co/security-labs/threat-command/malicious-browser-extension-kremlin-banking-malware)

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
