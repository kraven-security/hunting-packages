# New Threat Actor Floods npm Registry with Shai-Hulud Clones and DDoS Botnets

A new threat actor has flooded the npm registry with four malicious, typosquatted packages impersonating popular libraries like Axios and Chalk, which deploy Shai-Hulud infostealer clones, cloud credential harvesters, and DDoS botnets. 

Key takeaways

**🎯 Target**: JavaScript/Node.js developers and software development organizations relying on the npm ecosystem, specifically those executing misspelled installations of widely used packages like `axios` and `chalk`.

**💡 Insight**: This campaign highlights the incredibly rapid weaponization cycle of leaked cybercrime tools; following TeamPCP's recent leak of the Shai-Hulud source code and an active supply chain competition on BreachForums, a copycat actor quickly deployed an un-obfuscated clone alongside entirely diverse malware strains—including a GoLang-based DDoS botnet—managed under a single npm user profile.

**☑️ Recommendation 1:** Audit dependency trees immediately to detect and uninstall the malicious packages (`chalk-tempalte`, `@deadcode09284814/axios-util`, `axois-utils`, and `color-style-utils`), purge malicious configurations from local IDEs or Coding Agents, and forcefully rotate all SSH keys, cloud credentials (AWS/GCP/Azure), and crypto wallets on any exposed machine.

**☑️ Recommendation 2:** Block inbound and outbound network access to the identified malicious command-and-control (C2) infrastructures, specifically `87e0bbc636999b[.]lhr[.]life`, `edcf8b03c84634[.]lhr[.]life`, and `80[.]200[.]28[.]28:2222`.

**☑️ Recommendation 3:** Implement automated Software Supply Chain Security tools and dependency firewalls within development pipelines to intercept typosquatted packages, restrict unverified scope installations, and enforce strict lockfile verification practices.

🔗 [Source](https://www.ox.security/blog/new-actors-deploy-shai-hulud-clones-teampcp-copycats-are-here/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
