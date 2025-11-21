# New 'Tsundere' Botnet Hides in Fake Game Installers & Uses Blockchain for Control

A new, actively expanding botnet dubbed "Tsundere" is targeting Windows users by disguising itself as installers for popular games like Valorant and Counter-Strike 2, while leveraging the Ethereum blockchain to maintain resilient command-and-control (C2) communication.

Key takeaways:

👾 Gaming Lures: Attackers are using filenames related to popular titles—such as "Valorant," "r6x" (Rainbow Six Siege), and "cs2"—likely targeting users searching for pirated or cracked versions of these games.

🔗 Blockchain C2: Uniquely, the botnet uses Ethereum smart contracts to dynamically fetch its C2 server addresses, making the infrastructure highly resistant to takedowns and easy for attackers to rotate.

🛠️ Living off the Land: The malware deploys legitimate libraries (like pm2, ethers, and ws) and has even been observed leveraging legitimate Remote Monitoring and Management (RMM) tools to download payloads, blending in with normal system activity.

🇷🇺 Suspected Origins: Analysis of the source code reveals Russian language artifacts, and related malware tools specifically forbid targeting Russia and CIS countries, suggesting a Russian-speaking threat actor.

💻 Flexible Payload: The bot is designed to execute arbitrary JavaScript code, allowing it to adapt quickly for various malicious tasks, from proxying traffic to launching DDoS attacks.


🔗 [Source](https://securelist.com/tsundere-node-js-botnet-uses-ethereum-blockchain/117979/)

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
