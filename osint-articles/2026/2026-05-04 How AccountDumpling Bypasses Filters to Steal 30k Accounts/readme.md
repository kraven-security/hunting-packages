# How "AccountDumpling" Bypasses Filters to Steal 30k Accounts

A sophisticated Vietnamese-linked phishing operation, codenamed "AccountDumpling," is bypassing security filters by repurposing Google’s trusted infrastructure to hijack Facebook Business accounts. By abusing the noreply@appsheet.com address, attackers ensure their malicious "Meta Support" alerts land directly in primary inboxes, leading to the theft of credentials, 2FA codes, and government IDs.

Key takeaways

**🎯 Target**: Owners of Facebook Business accounts and users globally, with a high density of victims in the U.S., Italy, Canada, and the Philippines.

**💡 Insight**: The operation utilizes Google’s legitimate `noreply@appsheet.com` infrastructure as a "phishing relay," allowing malicious lures to pass SPF, DKIM, and DMARC checks and land directly in primary inboxes.

**☑️ Recommendation 1**: (Short-term) Audit your Facebook Business notifications directly within the official Meta Business Suite rather than interacting with email alerts, as the campaign specifically targets "Meta-related panic".

**☑️ Recommendation 2**: (Long-term) Transition high-value administrative accounts to phish-resistant MFA, such as FIDO2 hardware security keys, to neutralize the real-time "human-in-the-loop" phishing panels used by these threat actors.

**☑️ Recommendation 3**: (Defensive) Configure security monitoring to flag anomalous outbound HTTPS traffic to Telegram API endpoints, which serve as the primary command-and-control (C2) and exfiltration layer for this campaign.

🔗 [Source](https://guard.io/labs/accountdumpling---hunting-down-the-google-sent-phishing-wave-compromising-30-000-facebook-accounts)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `threat-actor-aliases.txt`: List of threat actor aliases in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
