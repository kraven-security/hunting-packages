# Your AI Budget is Under Attack: Hackers Hijacking Paid LLM Services

Cybercriminals are now exploiting misconfigured proxy servers to tunnel into premium Large Language Model (LLM) APIs, effectively forcing organizations to foot the bill for their malicious AI activities. By leveraging open proxies, threat actors can bypass geographic restrictions and cost barriers to power their own automated attacks using your paid subscriptions.

Key takeaways

🚨 Exploiting the Proxy Gap: Attackers are using automated scanners to find unsecured HTTP and SOCKS proxies, using them as "stepping stones" to access paid AI services like OpenAI and Claude anonymously.

🔒 Financial & Resource Theft: Beyond data risks, this is a direct hit to the bottom line; victims often discover the breach only after receiving massive, unexpected invoices for API overages.

🌐 Infrastructure Masking: By routing traffic through your misconfigured servers, hackers hide their true location and identity, making it significantly harder for AI providers to flag and block malicious requests.

🛡️ Hardening Your Perimeter: It is critical to disable unauthenticated proxies and implement strict Access Control Lists (ACLs) to ensure only authorized internal traffic can reach external API endpoints.

💡 Usage Monitoring: Organizations must implement real-time alerts for spikes in LLM API consumption, as sudden usage surges are often the first—and only—sign of a "quishing" or proxy-jacking incident.

🔗 [Source](https://www.greynoise.io/blog/threat-actors-actively-targeting-llms)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
