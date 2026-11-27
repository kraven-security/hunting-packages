# Fake Wallpaper Ads Hijack Browsers and Wipe Security Alerts to Steal Meta Business Accounts

A global malvertising campaign on Meta uses fake animated wallpaper ads to infect business devices. Once installed, the malware abuses enterprise management features to force-install browser extensions that steal Meta Business session cookies and delete inbox security alerts.

Key takeaways:

**🎯 Target:** Small businesses, digital marketers, and content creators using Meta Business Managers, Pages, and ad accounts across North America, Europe, Asia, Africa, and South America.

**💡 Insight:** Rather than relying on easily flagged software exploits, SYS010 hijacks legitimate enterprise controls, such as Chrome cloud management, Firefox policies, and Windows MDM enrollment, to force-install unremovable browser extensions (including a Mozilla-signed Firefox add-on) that steal active session cookies and permanently delete Gmail and Outlook security alerts.

**☑️ Recommendation 1:** Immediately check your browsers (`chrome://policy` or `edge://policy`) for an unexpected *"Managed by your organization"* notice on a personal or unmanaged business PC, this is a primary red flag of compromise.

**☑️ Recommendation 2:** Never download software from social media ads, and immediately reject repeated Windows administrator (UAC) prompts that appear without a clear reason.

**☑️ Recommendation 3:** Audit your Meta Business Manager permissions, payment methods, and active sessions regularly, and upgrade MFA to hardware security keys or authenticator apps so stolen emails cannot hand over login codes.

🔗 [Source](https://www.bitdefender.com/en-au/blog/labs/sys010-reloaded-malvertising-campaign-targeting-meta-business-accounts)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
