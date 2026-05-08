# Turf Wars in the Cloud: New Worm Evicts Competitors to Monopolize Credentials

SentinelOne researchers have identified a sophisticated cloud-native worm that automates the discovery of misconfigured cloud instances to harvest high-value credentials and purge rival malware. By actively evicting competitors such as TeamPCP, this threat ensures exclusive access to the victim's compute resources and sensitive data on an industrial scale.

Key takeaways:

🎯 **Target**: Cloud-native environments utilizing Docker, Kubernetes, and web applications that inadvertently expose sensitive environment variables (`.env` files) to the public internet.

💡 **Insight**: This campaign represents an evolution in "cyber-predation," in which automated scripts now conduct competitive analysis \- identifying, killing, and blocking rival threat actor processes to ensure the primary attacker has 100% of the hijacked resource's capacity.

☑️ **Recommendation 1**: **Immediate Exposure Audit**: Perform an urgent sweep of all public-facing assets to identify and secure exposed `.env` files and open management ports (like the Docker Socket), which serve as the primary entry points for this worm.

☑️ **Recommendation 2**: **Zero-Trust for Secrets**: Move away from storing long-lived credentials in environment files. Instead, use dedicated secret management services (such as AWS Secrets Manager or HashiCorp Vault) combined with short-lived, IAM role-based authentication.

☑️ **Recommendation 3**: **Runtime Monitoring**: Implement runtime security solutions that can detect and alert on "malware-on-malware" activity, such as unauthorized process termination or unexpected network scanning originating from within your cloud containers.

🔗 [Source](https://www.sentinelone.com/labs/cloud-worm-evicts-teampcp-and-steals-credentials-at-scale/)

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
