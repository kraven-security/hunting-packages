# UNK_SneakyStrike Campaign Targets Over 80,000 Microsoft Entra ID Accounts with TeamFiltration Tool

The UNK_SneakyStrike campaign has hit over 80,000 Microsoft Entra ID accounts using the open-source TeamFiltration tool for password spraying, risking data theft across hundreds of cloud tenants. Proofpoint reports concentrated bursts of attacks, urging stronger authentication to block unauthorized access.

Key takeaways:

🕵️‍♂️ Massive ATO Campaign: The UNK_SneakyStrike operation, active since December 2024, targeted over 80,000 Microsoft Entra ID accounts across 100+ cloud tenants, peaking at 16,500 accounts attacked daily in January 2025, using the TeamFiltration pentesting tool for password spraying.

🌍 Global Attack Sources: Malicious activity originated primarily from AWS infrastructure in the US (42%), Ireland (11%), and Great Britain (8%), exploiting Microsoft Teams APIs and AWS servers for user enumeration and data exfiltration.

⚠️ Strategic Targeting: Attackers focus on all users in smaller tenants but only target specific users in larger ones, operating in bursts with 4–5 day pauses, which increases the risk of account takeovers and persistent access.

🛡️ Tool Misuse Highlighted: TeamFiltration, designed for defensive security, was abused for nefarious purposes, underscoring the dual-use risks of open-source tools in breaching accounts and harvesting sensitive data.

🔒 Mitigation Urged: Organizations should enforce multifactor authentication (MFA), monitor login attempts, and restrict access to Entra ID to prevent exploitation, as the campaign’s scale emphasizes the need for robust identity security.

🔗 https://buff.ly/btvZfQL 

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
