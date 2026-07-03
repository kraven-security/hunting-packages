# ToddyCat APT Deploys "Umbrij" Tool for Covert OAuth Token Theft via Headless Browsers 

Threat researchers have uncovered an advanced campaign by the ToddyCat APT group leveraging a newly identified .NET malware tool named "Umbrij" to compromise corporate email communications. The operation relies on a stealthy post-compromise technique dubbed Shadow Token via Remote Debug (STRD) to silently siphon OAuth 2.0 authorization tokens directly from active user sessions.

Key takeaways

**🎯 Target**: Corporate cloud communications, primarily targeting active, authenticated employee Gmail and cloud-native Google Workspace accounts running on Windows endpoints.

**💡 Insight**: Umbrij malware stealthily steals OAuth tokens by side-loading via trusted binaries (e.g., Bitdefender, Visual Studio). It uses a headless Chromium browser to automate consent clicks for permissions, gaining account access without triggering standard EDR alerts.

**☑️ Recommendation 1**: Deploy endpoint detection rules to intercept and flag Chromium-based browser processes spawned with anomalous debugging parameters, specifically looking for the `--remote-debugging-port` flag. Concurrently, conduct a comprehensive audit of third-party application connections within your Google Workspace admin portal to immediately identify and revoke unverified or unauthorized OAuth token grants.

**☑️ Recommendation 2**: Restrict the runtime environment by utilizing enterprise Group Policy Objects (GPOs) to natively disable browser developer tools and remote debugging functionalities across standard, non-developer corporate user profiles.

**☑️ Recommendation 3**: Harden local endpoint systems against common DLL side-loading vectors by restricting folder write permissions for standard users, monitoring task schedulers for unauthorized additions, and ensuring vulnerable, legacy binaries are blocked or isolated. 

🔗 [Source](https://securelist.com/toddycat-apt-umbrij-tool-and-oauth/120251/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCSs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
