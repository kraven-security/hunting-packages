# Advanced Data Theft Campaign Hits Salesforce and ServiceNow Portals 

The "City-Forum" cyber campaign exfiltrates data from Salesforce and ServiceNow portals by exploiting permissive guest user configurations. Operating from Germany, attackers use custom tools to query undocumented APIs without login credentials or exploits.

Key takeaways:

**🎯 Target**: Enterprise organizations worldwide across telecommunications, banking, software, and public sector industries using Salesforce Experience Cloud sites or ServiceNow Service Portals.

**💡 Insight**: Rather than exploiting traditional zero-days, the threat actor weaponized custom Go-based tooling to exploit defensive blind spots, specifically targeting Salesforce's Lightning Web Runtime (LWR) UI-API layer and an undocumented ServiceNow search endpoint.

**☑️ Recommendation 1**: Immediately inspect Salesforce Event Monitoring and ServiceNow transaction logs for traffic originating from IP `158.220.87.79` or querying the `/api/now/sp/search` endpoint.

**☑️ Recommendation 2**: Audit guest user permissions across both platforms; strip unnecessary object/field read rights, disable guest public API access, and restrict guest sharing rules to least privilege.

**☑️ Recommendation 3**: Establish continuous SaaS configuration governance and behavioral anomaly monitoring to detect high-volume query and export activity on public endpoints before sensitive data is stolen. 

🔗 [Source](https://www.ontinue.com/resource/python-implant-hiding-its-entire-c2-inside-microsoft-365-azure/)

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
