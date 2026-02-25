# New Phishing Wave Hits US and European Freight Sectors

A high-volume phishing campaign is currently striking the freight and logistics sectors across the US and Europe by hijacking legitimate email threads to spread malware. Attackers are utilizing "ClickFix" social engineering to trick employees into manually executing malicious PowerShell scripts that deploy infostealers and remote access trojans.

Key takeaways

🚨 High-Trust Thread Hijacking: Threat actors are infiltrating existing email conversations using compromised legitimate accounts, making these malicious messages appear as credible follow-ups to routine business discussions.

💡 The "ClickFix" Evolution: Moving beyond simple links, this campaign uses fake "error" overlays that instruct users to copy and paste a command into their terminal to "fix" a document viewing issue—effectively bypassing many automated email filters.

🌐 Tailored Industry Lures: The attacks specifically impersonate industry-standard tools like Samsara and Astra TMS, using the precise language of shipping manifests and fleet management to lower the target's guard.

🛡️ Critical Defense Shift: Traditional link-scanning is no longer enough; organizations must immediately train staff to recognize "copy-paste" prompts as a major red flag and enforce hardware-backed MFA to stop the account takeovers that power these attacks.s

🔗 [Source](https://haveibeensquatted.com/blog/diesel-vortex-inside-the-russian-cybercrime-group-targeting-us-eu-freight)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `cryptocurrency-wallets.txt`: List of cryptocurrency wallets assocaited with the threat actor.
- `telegram-channels.txt`: List of telegram channel invites.
- `malicious-emails.txt`: List of email addresses associated with the threat actor.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
