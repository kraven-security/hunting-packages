# New Multi-Functional Linux Botnet 'Evooo1Bot' Targets Cloud and IoT Infrastructure 

Fortinet researchers discovered Evooo1Bot, a modular Linux botnet that executes DDoS attacks, reverse shells, and scripts, posing a significant risk to Linux endpoints, cloud workloads, and IoT devices.

Key takeaways

**🎯 Target**: Linux-based servers, cloud instances, and edge IoT devices running vulnerable services or weak SSH credentials.

**💡 Insight**: Evooo1Bot functions as a multi-purpose threat vector, combining multi-protocol DDoS flooding mechanisms with remote administrative execution, allowing attackers to quickly pivot from initial access to widespread operational disruption.

**☑️ Recommendation 1**: Immediately audit public-facing Linux systems, disable root SSH logins, enforce robust key-based authentication, and block outbound connections to known suspicious C2 infrastructure.

**☑️ Recommendation 2**: Apply emergency vendor patches across Linux servers for known remote code execution (RCE) vulnerabilities and restrict non-essential network ports via host-based firewalls.

**☑️ Recommendation 3**: Deploy Endpoint Detection and Response (EDR) agents tailored for Linux environments and implement Zero Trust Network Access (ZTNA) to continuously detect anomalous binary executions and lateral movement attempts. 

🔗 [Source](https://www.fortinet.com/blog/threat-research/multi-functional-linux-botnet-evooo1bot)

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
