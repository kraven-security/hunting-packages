# Fake Claude Site Spreads New Beagle Backdoor

Cybercriminals are distributing the "Beagle" backdoor via a fraudulent Claude AI website by abusing signed security software to bypass defenses and gain full remote control of Windows systems.

Key takeaways:

🎯 **Target**: Organizations and individual users searching for AI productivity tools, specifically those lured by search engine ads and malvertising leading to the fraudulent `claude-pro[.]com` domain.

💡 **Insight**: The campaign uses a highly sophisticated "PlugX-style" DLL sideloading chain, in which a legitimate, signed G DATA antivirus updater is forced to load a malicious library, demonstrating how threat actors are retooling established state-linked techniques to deliver a simple yet effective "snackable" backdoor.

☑️ **Recommendation 1**: Immediate Defense: Block all traffic to the malicious domain `claude-pro[.]com` and the command-and-control (C2) IP address `8.217.190.58` at your network perimeter.

☑️ **Recommendation 2**: Endpoint Hardening: Configure EDR/Next-Gen AV solutions to monitor for anomalous parent-child process relationships and unauthorized DLL sideloading, even when originating from trusted, signed binaries like security updaters.

☑️ **Recommendation 3**: Awareness & Validation: Update employee security training to emphasize the "Rule of Three" for software acquisition: only download tools from verified vendor domains, check for "sponsored" ad labels in search results, and report any site that lacks standard corporate links (e.g., Privacy Policy, About Us).

🔗 [Source](https://www.sophos.com/en-us/blog/donuts-and-beagles-fake-claude-site-spreads-backdoor)

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
