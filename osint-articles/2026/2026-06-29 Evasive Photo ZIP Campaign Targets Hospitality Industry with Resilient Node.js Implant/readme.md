# Evasive "Photo ZIP" Campaign Targets Hospitality Industry with Resilient Node.js Implant 

Since April 2026, Microsoft has tracked a phishing campaign targeting global hospitality networks. Attackers leverage 'authentication laundering' through platforms like Calendly to bypass filters and deploy persistent Node.js implants.

Key takeaways

**🎯 Target**: Front desk, reception, and reservation administrative systems in the hospitality industry across Europe and Asia, where staff frequently interact with external customer inquiries, booking platforms, and image uploads.

**💡 Insight**: Attackers bypass email filters via "authentication laundering" using Calendly. They deploy a resilient Node.js implant that uses Run and RunOnce registry keys to survive disinfection and persistently re-download malicious payloads.

**☑️ Recommendation 1**: Immediately inspect and audit endpoint environments for unauthorized Node.js execution patterns operating from user spaces, specifically checking `%TEMP%` or `AppData\Local\Nodejs\` directories; complete remediation requires completely purging both the ProgramData RunOnce payload and the registry Run key entries.

**☑️ Recommendation 2**: Implement strict mail protection and endpoint filtering rules to flag or block inbound, browser-downloaded archives matching the `photo-<random>.zip` pattern, and train administrative staff to recognize fake image shortcuts (`.lnk` files) masquerading as standard `.png` assets.

**☑️ Recommendation 3**: Shift organizational defenses away from fragile literal indicators (such as variable names or specific IP addresses) and focus on deploying robust, behavior-based detection metrics engineered to identify the entire sequential attack chain: shortcut execution, obfuscated PowerShell decoding, dynamic .NET compilation via `csc.exe`, and Node.js execution from non-standard user profiles.

🔗 [Source](https://www.microsoft.com/en-us/security/blog/2026/06/25/photo-zip-campaign-targeting-hospitality-industry-delivers-node-js-implant-persistent-access/)

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
