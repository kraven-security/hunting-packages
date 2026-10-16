# Zero-Click Spyware Delivered via Targeted Ads: Exposing 'AdFection' 

The Citizen Lab has uncovered "AdFection," a highly evasive technique that exploits targeted online ads to deliver zero-click mercenary spyware from Candiru. This campaign, facilitated by an Israeli company called Discover-Tech, turns the standard digital advertising ecosystem into a pipeline for silent device infection and mass deanonymization.

Key takeaways:

**🎯 Target:** Devices at international news network Al Jazeera, alongside millions of internet users globally who were covertly profiled and deanonymized.

**💡 Insight:** Discover-Tech masqueraded as a legitimate ad vendor on major networks, using its "Controlium" platform to automatically fingerprint and infect victims the exact moment an ad was rendered, requiring zero user interaction.

**☑️ Recommendation 1:** Implement strict network-level blocking of known indicators of compromise (IoCs) related to Discover-Tech and Candiru to prevent ad-based payload delivery.

**☑️ Recommendation 2:** Deploy comprehensive ad-blocking solutions and privacy-focused browsers across organizational devices to sever the malicious ad delivery vectors.

**☑️ Recommendation 3:** Maintain aggressive patch management for mobile operating systems and apps, and regularly audit third-party advertising tracking configurations within your environment.

🔗 [Source](https://citizenlab.ca/research/how-discover-tech-turned-targeted-ads-into-a-pipeline-for-spyware/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
