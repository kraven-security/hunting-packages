# Signed Adware Weaponized into a Global AV Killer

A massive campaign involving over 25,000 endpoints has transformed what appeared to be harmless "search monetization" software into a destructive security threat. Signed by Dragon Boss Solutions LLC, this software uses elevated SYSTEM privileges to silently uninstall antivirus products and modify system files to prevent their reinstallation.

Key takeaways

🎯 Target: Global organizations and individual users with systems infected by "monetization" browsers or utilities (e.g., Chromstera, Artificius) that carry the Dragon Boss signed update mechanism.

💡 Insight: The vulnerability wasn't just in the code, but in the infrastructure; a primary update domain was left unregistered, allowing researchers to hijack the entire supply chain and push any payload directly to thousands of hosts.

☑️ Recommendation 1: (Immediate Forensic Hunt) Audit your environment for WMI event subscriptions named "MbRemoval" or "MbSetup" and scheduled tasks referencing "ClockRemoval.ps1" or "WMILoad" directories.

☑️ Recommendation 2: (Enforce Signing Blocks) Proactively block or alert on any executables digitally signed by Dragon Boss Solutions LLC and review Windows hosts files for unauthorized entries that block security vendor update domains.

☑️ Recommendation 3: (Re-evaluate PUP Risk) Elevate the priority of "Potentially Unwanted Programs" (PUPs) in your security policy. As this case proves, the line between "annoying adware" and "supply chain weapon" can vanish with a single domain registration.

🔗 [Source](https://www.huntress.com/blog/pups-grow-fangs)

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
