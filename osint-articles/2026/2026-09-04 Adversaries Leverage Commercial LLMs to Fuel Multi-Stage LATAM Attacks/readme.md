# Adversaries Leverage Commercial LLMs to Fuel Multi-Stage LATAM Attacks

Unit 42 discovered multi-stage attacks on Latin American organizations using commercial LLMs to overcome execution errors and exfiltrate data. However, basic operational security flaws like exposed SSL certificates allowed defenders to map their shared proxy infrastructure.

Key takeaways

**🎯 Target**: Organizations across Latin America, specifically Mexican transportation entities, federal government ministries, municipal water utilities, and the Brazilian financial sector.

**💡 Insight**: Threat actor clusters (tracked as CL-CRI-1131 and CL-CRI-1163) utilize commercial AI models (including Claude and GPT variants) via NextChat interfaces as real-time copilots to overcome command errors, automate script creation, and streamline post-exploitation workflows.

**☑️ Recommendation 1**: Restrict and actively audit outbound traffic to unapproved web-based LLM interfaces and commercial AI APIs across corporate networks to stop threat actors from leveraging internal hosts as AI troubleshooting workbenches.

**☑️ Recommendation 2**: Implement strict threat hunting for anomalous SOCKS5 proxy relay connections and inspect SSL/TLS certificates for consolidated multi-SAN configurations associated with infrastructure rotation.

**☑️ Recommendation 3**: Deploy behavior-based Endpoint Detection and Response (EDR) rules targeting non-standard process creation and dynamically generated script execution to catch AI-crafted payloads that bypass static signature defenses.

🔗 [Source](https://unit42.paloaltonetworks.com/ai-tool-use-targeting-latam-orgs/)

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
