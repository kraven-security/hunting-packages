# Meta Moves to Hold NSO Group in Contempt Following Renewed WhatsApp Spyware Attacks 

Meta has filed a federal court contempt order against commercial spyware vendor NSO Group for violating a permanent injunction barring them from targeting WhatsApp and its users. WhatsApp security teams recently detected and disrupted a new NSO-linked social engineering and spear-phishing campaign that utilized malicious test groups and external links to target specific high-risk users.

**Key takeaways**

**🎯 Target**: High-risk civil society individuals, specifically journalists, political activists, humanitarian organizations, and government or military personnel, with recent active campaigns focusing on targets in Jordan and Lebanon.

**💡 Insight**: Despite explicit legal boundaries and an active permanent injunction, commercial surveillance-for-hire entities continue to aggressively spin up rogue infrastructure. The latest campaign used WhatsApp test groups and one-click external phishing links to lure users to malicious landing pages. Crucially, NSO's leadership has admitted to seeking exploitation "vectors" that lie completely outside secure messaging protocols, indicating a tactical focus on vulnerabilities in mobile web browsers, foundational operating systems, and mainstream system applications.

**☑️ Recommendation 1**: Implement strict device hardening and OS isolation for high-value corporate or diplomatic targets. Individuals operating in sensitive sectors should enable advanced defensive measures, such as Apple's Lockdown Mode or Android's maximum security constraints, to explicitly limit the browser and operating system vectors currently targeted by commercial spyware operators.

**☑️ Recommendation 2**: Ingest newly published infrastructure threat indicators (IoCs) into corporate firewall, DNS filtering, and endpoint detection systems. Organizations must immediately block and audit logs for traffic interacting with known NSO-linked infrastructure, specifically monitoring for the rogue media and casting domains recently disclosed by Meta.

**☑️ Recommendation 3**: Enforce aggressive mobile application patch management across the enterprise ecosystem. Ensure all corporate endpoints immediately apply updates to operating systems, messaging applications, and web browsers, and establish continuous zero-trust behavioral training for employees regarding unprompted external communication links sent outside standard verification channels. 

🔗 [Source](https://about.fb.com/news/2026/06/fighting-spyware-an-update-from-whatsapp/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
