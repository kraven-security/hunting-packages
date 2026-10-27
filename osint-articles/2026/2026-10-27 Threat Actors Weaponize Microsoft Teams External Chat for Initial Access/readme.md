# Threat Actors Weaponize Microsoft Teams External Chat for Initial Access

Arctic Wolf Labs has uncovered a widespread social engineering campaign in which threat actors exploit Microsoft Teams' default-enabled external chat feature to impersonate IT support and deliver malicious payloads. In over 400 observed incidents, attackers bypassed traditional email defenses by launching attacks directly within the trusted Teams environment.

Key takeaways:

**🎯 Target**: Employees across various organizations who use Microsoft Teams, particularly those susceptible to IT support impersonation scams.

**💡 Insight**: Attackers often precede the Teams message with an "email bombing" campaign, flooding the victim's inbox with hundreds of subscriptions to create urgency and bury legitimate security alerts, right before the fake "IT Support" reaches out via Teams to "fix" the issue.

**☑️ Recommendation 1:** Review and restrict Microsoft Teams external access (federation) settings. Disable communication with unmanaged external accounts unless strictly necessary for business operations.

**☑️ Recommendation 2:** Train employees to recognize Teams-specific social engineering tactics, such as external senders using display names that include terms like "(Internal)", IT-themed names, or trust-building emojis (🛡️, ✅).

**☑️ Recommendation 3:** Implement robust monitoring for the `ChatCreated` event in Microsoft Teams logs to identify and disrupt suspicious external chat initiations before the victim engages with the threat actor.

🔗 [Source](https://arcticwolf.com/resources/blog/threat-actors-abuse-microsoft-teams-external-chat-for-initial-access/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
