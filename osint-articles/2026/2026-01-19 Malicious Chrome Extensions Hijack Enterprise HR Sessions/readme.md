# Malicious Chrome Extensions Hijack Enterprise HR Sessions

A coordinated campaign of Chrome extensions has been discovered targeting Workday, NetSuite, and SAP SuccessFactors to steal session cookies and block security management pages. These tools masquerade as productivity enhancers but are designed for stealthy, full-account takeovers.

Key takeaways:

🚨 Coordinated Exploitation: Researchers identified five malicious extensions, such as "Data By Cloud 2" and "Tool Access 11," designed to infiltrate high-value enterprise ERP and HR environments.

🍪 Session Hijacking: The malware exfiltrates authentication cookies every 60 seconds, enabling attackers to bypass Multi-Factor Authentication (MFA) and maintain access even after a user logs out.

🛡️ Defensive Sabotage: Specific extensions were found to block over 50 different security administration pages, effectively "blinding" IT teams and preventing them from responding to the breach.

💉 Advanced Infiltration: The campaign utilizes bidirectional cookie injection to take over authenticated sessions directly, allowing for immediate account access without needing a username or password.

🔒 Immediate Action: If these tools were used, notify your security team immediately, rotate all platform credentials, and audit active sessions for any unauthorized activity.

🔗 [Source](https://socket.dev/blog/5-malicious-chrome-extensions-enable-session-hijacking)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-extensions.txt`: List of malicious browser extension IDs in the article. 

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
