# ScarCruft Compromises Gaming Platform in Targeted Espionage

ESET Research has uncovered a sophisticated supply chain attack by the North Korea-aligned threat actor ScarCruft. By compromising the developer of a popular gaming platform, the attackers successfully injected malware into legitimate software updates, turning a trusted application into a gateway for data theft and surveillance.

**Key takeaways**

🎯 **Target**: Primarily users of a specific South Korean gaming platform, with secondary targets including high-profile individuals and organizations of interest to the North Korean regime.

💡 **Insight**: This "rigged game" demonstrates a high level of persistence; ScarCruft gained control of the software's update mechanism. This allowed them to deliver customized malicious payloads to specific victims while remaining undetected by the general user base.

☑️ **Recommendation 1:** (Long-term) Implement Strict Software Inventory & Verification. Verify the integrity of all third-party software updates. Use code-signing certificate monitoring to ensure that updates are coming from the legitimate vendor and haven't been tampered with.

☑️ **Recommendation 2:** (Long-term) Adopt "Zero Trust" for Third-Party Apps. Short-term, restrict application permissions on corporate devices to the minimum required. Long-term, move toward an "application allow-listing" model where only pre-vetted, cryptographically verified software can execute.

☑️ **Recommendation 3:** (Long-term) Enhanced Endpoint Monitoring (EDR). Since supply chain attacks bypass initial defenses via trusted channels, deploy EDR solutions to flag "living-off-the-land" behaviors, such as a gaming app suddenly launching PowerShell or making unusual external network connections.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/rigged-game-scarcruft-compromises-gaming-platform-supply-chain-attack/)

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
