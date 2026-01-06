# DragonForce Ransomware Gang Targets UK Retail in Profit-Driven Evolution

The DragonForce ransomware gang, once a pro-Palestinian hacktivist group, now targets UK retailers like Harrods and Marks & Spencer with multi-extortion attacks. Using a sophisticated RaaS model, they disrupt critical systems and demand ransoms via their RansomBay leak platform.

Key takeaways:

🐉 From Hacktivists to Extortionists: Emerging in 2023 as a Malaysian pro-Palestinian group, DragonForce has shifted to a profit-driven ransomware cartel targeting UK retailers, law firms, and medical practices.

🛍️ UK Retail Attacks: Recent attacks on Harrods, Marks & Spencer, and Co-op disrupted payment, inventory, and payroll systems, leveraging a white-label RaaS model for scalability.

🛠️ Advanced Toolset: DragonForce uses Conti v3-based ransomware with ChaCha8 encryption, deployed via phishing, credential stuffing, or exploits like Log4Shell, supported by tools like Cobalt Strike and SystemBC.

🔗 Affiliate Operations: Their affiliate panel allows tailored payloads, with some attacks linked to “The Com” collective, though attribution remains inconclusive.

🛡️ Defensive Recommendations: To counter DragonForce, organizations should implement MFA, patch vulnerabilities, monitor data exfiltration, and use EDR/XDR solutions.

🔗 https://buff.ly/jtd018q

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-actor-aliases.txt`: TOXID used on social media by threat actor.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
