# Morphing Meerkat PhaaS Leverages DNS-over-HTTPS to Slip Past Security Defenses

The "Morphing Meerkat" phishing-as-a-service operation, active since 2020, uses DNS-over-HTTPS to hide its tracks, delivering scalable phishing attacks with minimal know-how required. Infoblox researchers uncovered this evasive toolkit—tighten DNS controls to fight back!

Key takeaways:

🦹‍♂️ Stealthy PhaaS Unveiled: Morphing Meerkat, a phishing-as-a-service platform active since 2020, was exposed by Infoblox for using DNS-over-HTTPS (DoH) to evade detection and launch widespread attacks.

🔧 Easy Attack Toolkit: It offers a complete, user-friendly kit for scalable phishing, requiring little technical skill, and uses DoH and DNS MX records to dynamically target victims.

🌐 Evasion Tactics: By querying Google or Cloudflare for MX records, it tailors phishing pages to match victims’ email providers, dodging traditional security filters.

🛡️ Defense Strategy: Infoblox suggests tighter DNS controls, like blocking DoH servers or non-critical adtech/file-sharing access, to mitigate this threat.

🔗 https://buff.ly/zG03Vil

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
