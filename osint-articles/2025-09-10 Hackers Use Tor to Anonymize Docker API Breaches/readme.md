# Hackers Use Tor to Anonymize Docker API Breaches

Cybercriminals are exploiting exposed Docker remote APIs and utilizing the Tor network to conceal their malicious activities, including the deployment of cryptocurrency miners. This sophisticated attack chain underscores the crucial importance of implementing robust Docker security configurations to prevent unauthorized access and resource hijacking.

Key takeaways:

🔒 Exposed APIs: Attackers are actively scanning for and exploiting misconfigured Docker Remote APIs to gain initial access to containerized environments.

🌐 Tor for Anonymity: The Tor network is being used to mask the attackers' command-and-control (C&C) infrastructure, making it difficult to trace their origins and block their activities.

💻 Cryptocurrency Miners: The primary goal of these attacks is to deploy cryptocurrency miners, which secretly use the victim's system resources to generate revenue for the attackers.

🛡️ Defense in Depth: To mitigate this threat, organizations must properly configure Docker APIs, restrict access to trusted sources, and regularly audit for suspicious containers and images.

🔗 [Source](https://www.akamai.com/blog/security-research/new-malware-targeting-docker-apis-akamai-hunt)

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
