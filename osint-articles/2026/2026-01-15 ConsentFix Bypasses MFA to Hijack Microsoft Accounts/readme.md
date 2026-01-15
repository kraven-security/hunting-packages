# "ConsentFix" Bypasses MFA to Hijack Microsoft Accounts

A sophisticated new attack technique dubbed ConsentFix is targeting Entra ID (Azure AD) environments by merging ClickFix-style social engineering with OAuth consent phishing. Linked to the Russian state-affiliated group APT29, this method effectively sidesteps traditional security layers—including MFA and passkeys—by weaponizing the authorization flow of trusted first-party applications.

Key takeaways

🔒 MFA & Passkey Bypass: Because the attack hijacks the OAuth authorization code after the user has already authenticated, even the strongest phishing-resistant MFA methods offer no protection.

🎯 Exploiting Trusted Apps: ConsentFix specifically targets pre-consented first-party Microsoft apps like Azure CLI, Teams, and VS Code, which are often exempt from strict Conditional Access policies.

🇷🇺 State-Sponsored Sophistication: Attribution to APT29 highlights a high level of stealth, using legacy scopes and "localhost" redirects to evade standard detection and logging.

🛡️ Urgent Mitigation: Security teams should immediately restrict access to vulnerable Service Principals and ensure AADGraphActivityLogs are enabled for monitoring.

🌐 The Browser Attack Surface: This campaign underscores the need for browser-native security, as traditional EDR tools often fail to detect these purely browser-based interactions.

🔗 [Source](https://pushsecurity.com/blog/consentfix)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
