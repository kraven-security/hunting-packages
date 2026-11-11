# Inside an AhsayCBS Intrusion: Hidden Webshells & Evolving Threat Tactics 

Threat actors are actively exploiting critical vulnerabilities (CVE-2026-105133 and CVE-2026-105134) in AhsayCBS backup software to establish deep, persistent access within enterprise environments. A recent Huntress investigation reveals these intrusions go far beyond simple cryptomining, deploying a complex arsenal of self-deleting webshells, custom Python C2 implants, and tunneling tools designed for long-term compromise.

Key takeaways:

**🎯 Target:** Organizations utilizing unpatched AhsayCBS management consoles. Evidence of Veeam credential-theft modules strongly suggests attackers are targeting critical backup infrastructure.

**💡 Insight:** The threat actors are using highly advanced evasion techniques, including a specialized loader (`AhsayCBS.jsp`) that hides encrypted malicious payloads directly within the pixel data of PNG images and runs them straight from memory to bypass disk-based detection.

**☑️ Recommendation 1:** Immediately apply Ahsay’s latest hotfixes (10.3.4.45 for v10, and 9.15.2.70 for v7-v9) to close the authentication bypass and RCE entry points.

**☑️ Recommendation 2:** If your AhsayCBS servers were exposed prior to patching, do not assume you are safe. You must actively hunt for post-compromise artifacts, such as unusual SYSTEM scheduled tasks (often tied to XMRig miners) and hidden `.jsp` webshells in your web directories.

**☑️ Recommendation 3:** Harden your backup environments by strictly limiting administrative access, enforcing robust MFA, and continuously monitoring for unauthorized credential harvesting attempts aimed at your backup systems.

🔗 [Source](https://www.huntress.com/blog/ahsaycbs-webshells)

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
