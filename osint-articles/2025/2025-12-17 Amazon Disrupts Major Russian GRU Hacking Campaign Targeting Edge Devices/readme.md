# Amazon Disrupts Major Russian GRU Hacking Campaign Targeting Edge Devices

Amazon's threat intelligence team has successfully disrupted a long-running cyber espionage operation attributed to the Russian GRU, which has been actively targeting Western critical infrastructure. The hackers shifted their tactics from exploiting zero-day vulnerabilities to aggressively targeting misconfigured edge devices like VPN gateways and routers to harvest credentials and intercept traffic.

Key takeaways:

😈 State-Sponsored Threat: The campaign is linked to notorious GRU sub-groups, including Sandworm (APT44) and Curly COMRades, focusing heavily on the energy sector.

📉 Tactical Shift: Attackers are moving away from complex exploits and instead focusing on "low-hanging fruit"—misconfigured network appliances with exposed management interfaces.

☁️ Cloud Targeting: The compromised devices were largely customer-managed network appliances hosted on AWS EC2 instances, though the AWS platform itself was not compromised.

🕵️ Passive Interception: Evidence suggests the attackers used passive packet capturing to steal credentials and move laterally across networks with minimal noise.

🚨 Immediate Action: Amazon has notified affected customers and recommends auditing network devices, isolating management interfaces, and enabling robust logging like CloudTrail and GuardDuty.

🔗 [Source](https://aws.amazon.com/blogs/security/amazon-threat-intelligence-identifies-russian-cyber-threat-group-targeting-western-critical-infrastructure/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
