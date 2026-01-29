# New Tsundere Botnet Leveraging Game Lures and Web3 for Stealth

Security researchers have uncovered the "Tsundere" botnet, a resilient Windows-based threat using fake game setups and Ethereum blockchain to evade detection. Hackers are exploiting the popularity of titles like Valorant and CS2 to deploy Node.js-based malware capable of total system takeover.

Key takeaways:

👾 Predatory Lures: Malicious MSI and PowerShell files are disguised as installers for AAA games (Valorant, CS2, Rainbow Six Siege) to target unsuspecting gamers.

⛓️ Web3 Resilience: By using Ethereum smart contracts to host C2 addresses, threat actors can rotate their infrastructure instantly with a single blockchain transaction.

⚡ Node.js Bot Architecture: The bot exploits the pm2 process manager to maintain persistence and execute arbitrary JavaScript code retrieved via encrypted WebSockets.

🕵️‍♂️ InfoStealer Connection: Tsundere is linked to '123 Stealer,' suggesting that initial access is often followed by high-value credential and cryptocurrency theft.

🛡️ Immediate Action: Audit systems for unauthorized Node.js environments and strictly enforce the use of official, verified software distribution platforms.

🔗 [Source](https://www.proofpoint.com/us/blog/threat-insight/cant-stop-wont-stop-ta584-innovates-initial-access)

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
