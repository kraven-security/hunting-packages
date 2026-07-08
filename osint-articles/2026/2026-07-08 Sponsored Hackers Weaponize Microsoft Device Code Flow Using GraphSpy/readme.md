# Sponsored Hackers Weaponize Microsoft Device Code Flow Using GraphSpy  

Russian state-sponsored actor Storm-2372 is leveraging the OAuth 2.0 Device Authorization Grant and GraphSpy to bypass MFA in sophisticated Microsoft 365 phishing campaigns, avoiding the need for fake domains.

Key takeaways

**🎯 Target**: Global Microsoft 365 environments, specifically targeting government agencies, defense contractors, critical infrastructure, and high-value corporate profiles in executive or financial roles.

**💡 Insight**: Attackers bypass traditional defenses by leveraging the legitimate Microsoft login page. By capturing tokens through the device code flow, they use GraphSpy to map infrastructure, register rogue devices, and inject backup MFA methods.

**☑️ Recommendation 1**: Leverage Microsoft Entra ID Conditional Access policies to explicitly block the Device Code Flow protocol (`deviceCode`) across all enterprise user accounts, creating carefully audited exceptions only for input-constrained platforms like meeting room systems.

**☑️ Recommendation 2**: Establish active detection alerts in your SIEM or Microsoft Sentinel to look for IP address mismatches between different legs of the authentication sequence, alongside checking for post-compromise indicators such as immediate bulk Microsoft Graph API mailbox reads or hidden inbox forwarding rules.

**☑️ Recommendation 3**: Migrate the entire enterprise authentication framework away from telephony- or push-based MFA toward true phishing-resistant methods, such as FIDO2 security keys or Microsoft Authenticator passkeys, ensuring that authentication is securely bound to cryptographic intent. 

🔗 [Source](https://zerobec.com/blog/debull-storm-2372-microsoft-device-code-phishing-graphspy)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
