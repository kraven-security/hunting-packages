# Hidden Exfiltration Discovered in 900k-User Chrome Extension 

Threat researchers have uncovered hidden surveillance capabilities within the highly trusted "ModHeader" Chrome extension, allowing it to covertly harvest and exfiltrate user browsing data. While Google swiftly removed the extension from the Chrome Web Store on July 10, 2026, existing installations remain a significant threat to enterprise environments.

Key takeaways:

**🎯 Target**: Enterprise networks and the 900,000+ users who previously installed the "ModHeader" extension.

**💡 Insight**: The threat leveraged its established reputation and "trusted" status to quietly generate unique identifiers, monitor browsing activity, and communicate with external infrastructure, demonstrating the severe, often overlooked supply chain risks associated with third-party browser plugins.

**☑️ Recommendation 1**: Audit your environment to identify and forcefully remove all existing instances of the ModHeader Chrome extension across your network.

**☑️ Recommendation 2**: Conduct a thorough review of historical network logs to investigate potential data exposure and identify exactly what browsing activity may have been compromised.

**☑️ Recommendation 3**: Update your organization's IT policies to enforce strict allow-listing for browser extensions, actively blocking the installation of unvetted third-party add-ons. 

🔗 [Source](https://stripeolt.com/knowledge-hub/threat-research/chrome-extension-hidden-data-exfiltration-900k-users/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
