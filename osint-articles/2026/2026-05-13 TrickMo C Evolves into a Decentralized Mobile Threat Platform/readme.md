# TrickMo C Evolves into a Decentralized Mobile Threat Platform

The TrickMo Android malware now uses the decentralized TON blockchain for its C2 infrastructure to evade takedowns. This version shifts from basic fraud to using compromised devices as network proxies to infiltrate secure corporate and home environments.

Key takeaways:

🎯 **Target**: Android users of banking, fintech, and cryptocurrency wallet applications, with recent campaigns specifically targeting victims in France, Italy, and Austria.

💡 **Insight**: By utilizing .adnl identities on the TON network, TrickMo’s C2 traffic is nearly impossible to block via DNS filtering, and its new SOCKS5/SSH tunneling capabilities allow attackers to "pivot" through the victim's phone to scan and attack internal systems while appearing as legitimate local traffic.

☑️ **Recommendation 1**: Conduct an immediate audit of Android devices for any third-party apps requesting "Accessibility Services" permissions, particularly those masquerading as "Google Play Services", and enforce a policy of revoking these permissions for all non-essential or unverified software.

☑️ **Recommendation 2**: Transition your organization's MFA strategy from SMS or app-based OTPs (which TrickMo can intercept/suppress) to hardware-based security keys (FIDO2/Passkeys) that are resistant to the screen-streaming and credential-overlay techniques used by this malware.

☑️ **Recommendation 3**: Update Zero Trust Network Access (ZTNA) policies to detect and alert on anomalous outbound proxy traffic (SOCKS5/SSH) originating from mobile endpoints, as these now represent a viable entry point for internal network reconnaissance.

🔗 [Source](https://www.threatfabric.com/blogs/new-trickmo-variant-device-take-over-malware-targeting-banking-fintech-wallet-auth-app)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `malicious-packages.txt`: List of malicious package names in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
