# Partisan Zmiy Threat Actors Lurked in Healthcare Network for Two Years undetected

The Solar 4RAYS incident response team uncovered a sophisticated, long-term espionage campaign by the Partisan Zmiy (Cyber Partisans) group targeting a large medical organization. Attackers infiltrated the network in early 2024 and maintained stealthy, non-destructive access for nearly two years, leveraging the organization's trusted relationships with subsidiary healthcare structures for further espionage.

Key takeaways:

**🎯 Target:** A major healthcare organization with a sprawling infrastructure and extensive trusted network connections to subsidiary medical facilities.

**💡 Insight:** To maintain long-term persistence without detection, the attackers brilliantly weaponized a "blind spot", legitimately installed but unused VMware virtualization software, using a custom cron-like scheduler to disguise their payloads as VMware Tools components and WSUS services.

**☑️ Recommendation 1:** Audit all systems for installed but unmanaged or unmonitored software (like legacy virtualization agents). Remove them if unnecessary, or bring them under strict monitoring and patch management if required.

**☑️ Recommendation 2:** Enhance monitoring of Windows services, specifically looking for anomalous DLL loads from C:\\Windows\\System32\\ or unexpected modifications to legitimate service registry keys (like AppMgmt).

**☑️ Recommendation 3:** Implement robust network segmentation and strict zero-trust principles, especially concerning "trusted relationships" with subsidiaries or partner organizations, to limit the blast radius if one entity is compromised.

🔗 [Source](https://rt-solar.ru/solar-4rays/blog/7027/)

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
