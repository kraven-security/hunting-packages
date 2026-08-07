# Multi-Brand Vishing Campaign Escalates Attacks on Financial Services & Enterprise Cloud Infrastructure

Threat actor UNC6671 has rebranded into several fronts (Redact, Pink, Helix, Falcon) to conduct aggressive data exfiltration. The group uses targeted vishing and AiTM infrastructure to bypass MFA and compromise Microsoft 365 and Okta environments.

Key takeaways:

**🎯 Target**: Mature enterprise environments, with recent high-intensity targeting shifting specifically toward financial services, private equity firms, law practices, and financial rating agencies.

**💡 Insight**: The group bypasses workplace security controls by calling employees' personal mobile phones while masquerading as IT help desk staff, luring them to fake passkey/SSO migration portals that hijack MFA tokens and execute automated data exfiltration scripts.

**☑️ Recommendation 1**: Conduct immediate user awareness campaigns explicitly warning employees against taking IT migration instructions over personal cellular phones or entering credentials on unverified passkey/SSO enrollment links.

**☑️ Recommendation 2**: Transition high-value accounts to FIDO2-compliant, hardware-backed credentials (such as YubiKeys) that cryptographically bind authentication to legitimate origin domain names, effectively neutralizing AiTM proxy harvesting panels.

**☑️ Recommendation 3**: Establish continuous threat monitoring over SaaS audit logs (e.g., M365 Unified Audit Log and Okta system logs) to detect suspicious session persistence, anomalous API requests, and automated bulk data harvesting from SharePoint and OneDrive.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/unc6671-targets-financial-services-and-enterprise-cloud-environments)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
