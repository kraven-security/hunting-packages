# GoldFactory Weaponizes App Cloning to Evade Banking Security

The GoldFactory threat group is pairing its Gigabud Android trojan with "Vwork," a weaponized open-source app cloner. By executing cloned banking apps inside an isolated Android Work Profile, attackers effectively obscure fraudulent sessions from security detection tools operating in the user's main profile.

Key takeaways

**🎯 Target**: Android mobile banking users across Southeast Asia, Latin America, Africa, and the Middle East who are targeted via phishing lures impersonating tax agencies, airlines, and government portals.

**💡 Insight**: The campaign abuses Android's native Work Profile architecture by using Vwork, a modified fork of the open-source tool Shelter, to clone banking applications into a segregated workspace where traditional security SDKs fail to detect the active malware.

**☑️ Recommendation 1**: Fraud detection systems and Mobile Threat Defense (MTD) vendors should update telemetry to flag the unexpected creation of Android Work Profiles on consumer endpoints.

**☑️ Recommendation 2**: Organizations should enforce policies that restrict device settings to block APK sideloading, requiring applications to be installed exclusively from verified app stores.

**☑️ Recommendation 3**: Educate end-users never to grant Accessibility permissions, overlay privileges, or battery optimization exemptions to unverified applications received via SMS or messaging apps.

🔗 [Source](https://www.group-ib.com/blog/vwork-app-cloning-gigabud-goldfactory/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
