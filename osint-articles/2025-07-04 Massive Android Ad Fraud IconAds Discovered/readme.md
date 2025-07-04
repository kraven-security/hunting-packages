# Massive Android Ad Fraud "IconAds" Discovered

A huge mobile ad fraud campaign called IconAds, involving 352 Android apps, has been uncovered. These malicious apps hide their icons and bombard users with out-of-context ads, making them difficult to remove.

Key takeaways:

🚨 The malicious apps hide their icons from the home screen, making them hard for users to find and uninstall.

📱 The primary goal of these apps is to disrupt the user experience by loading intrusive ads, no matter what app is currently active.

🎭 Some of these apps even impersonate the Google Play Store or other legitimate Google apps to deceive users while conducting malicious activities in the background.

📈 At its peak, this ad fraud operation was responsible for a staggering 1.2 billion ad bid requests per day.

🔗 [Source](https://www.humansecurity.com/learn/blog/satori-threat-intelligence-alert-iconads/)

## Package Content

- `malicious-apps.txt`: List of all malicious IconAds apps in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
