# RoadK1ll: The New WebSocket "Access Amplifier" Stealthily Pivoting Through Networks

A new Node.js-based implant dubbed RoadK1ll is being used by threat actors to turn a single compromised host into a powerful relay point. By leveraging the WebSocket protocol for outbound communication, this lightweight tool bypasses traditional perimeter defenses, granting attackers deep access to internal services and segments otherwise unreachable from the outside.

Key takeaways:

🕵️‍♂️ Stealthy WebSocket Tunneling: RoadK1ll establishes an outbound WebSocket connection rather than waiting for inbound traffic. This allows it to blend into legitimate web traffic and evade detection by standard firewall rules.

⚡ Access Amplification: Its primary function is to act as a "pivoting" point. Once inside, an attacker can relay TCP traffic to internal management interfaces and adjacent hosts, effectively inheriting the network trust of the infected machine.

🛡️ Bypassing Perimeters: Because the connections originate from within the network, they often bypass external security controls, allowing attackers to communicate with multiple internal destinations simultaneously over a single tunnel.

🔒 Transient Presence: Interestingly, RoadK1ll often lacks traditional persistence mechanisms like registry keys. It operates as a live process, making real-time process monitoring and outbound connection analysis critical for detection.

🔗 [Source](https://blackpointcyber.com/blog/roadk1ll-a-websocket-based-pivoting-implant/)

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
