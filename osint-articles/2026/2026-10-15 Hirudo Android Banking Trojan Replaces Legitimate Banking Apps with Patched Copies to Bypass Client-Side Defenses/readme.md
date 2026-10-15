# Hirudo Android Banking Trojan Replaces Legitimate Banking Apps with Patched Copies to Bypass Client-Side Defenses 

ThreatFabric identified Hirudo, an evasive Android banking trojan that forces users to uninstall genuine banking apps and replaces them with trojanized, patched copies. Distributed via fake updates in entertainment and shopping droppers, the malware embeds runtime hooking engines directly into target applications to subvert security checks and hijack user accounts.

Key takeaways:

**🎯 Target:** Retail banking customers and financial institutions, specifically targeting multiple Indonesian banking apps, with broader targeting extending to institutions in China, India, Mexico, Morocco, and Thailand.

**💡 Insight:** Rather than relying solely on external overlays, Hirudo embeds the YAHFA and Dobby hooking frameworks directly into the target app's code, allowing it to neutralize screenshot protections, mask malicious Accessibility permissions, and spoof genuine certificates and Play Integrity verdicts from within the compromised application.

**☑️ Recommendation 1:** Users and enterprise mobile users should immediately block sideloading from unknown sources, deny Accessibility service permissions to non-essential or third-party applications, and remain vigilant against unexpected app uninstalls or reinstall prompts.

**☑️ Recommendation 2:** Enterprise security teams should implement Mobile Threat Defense (MTD) solutions configured to flag application signature mismatches, side-by-side package replacements, and the presence of dynamic hooking libraries on managed mobile devices.

**☑️ Recommendation 3:** Banking application developers and financial institutions must treat all client-side telemetry as potentially compromised and transition to strict server-side attestation and transaction validation, paired with behavioral biometrics to detect automated and remote-access fraud.

🔗 [Source](https://www.threatfabric.com/blogs/hirudo-from-fake-updates-to-patched-banking-apps)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-packages.txt`: List of malicious Android packages in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
