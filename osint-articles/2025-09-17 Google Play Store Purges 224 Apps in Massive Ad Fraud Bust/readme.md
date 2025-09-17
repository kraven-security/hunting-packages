# Google Play Store Purges 224 Apps in Massive Ad Fraud Bust

Google has removed 224 malicious Android apps from the Play Store after uncovering a massive ad fraud campaign dubbed "SlopAds." The operation, which generated billions of fraudulent ad requests daily, highlights the ongoing battle against sophisticated cybercrime on mobile platforms.

Key takeaways:

🔒 Widespread Deception: The 224 apps, downloaded over 38 million times, used steganography and other advanced techniques to hide their malicious ad-clicking behavior.

🛡️ Massive Scale: The SlopAds campaign was responsible for an astounding 2.3 billion ad requests per day, with the U.S. being the most targeted nation.

💡 Hidden in Plain Sight: The malware, named "FatModule," was cleverly hidden within PNG images and would only activate when the app was installed through one of the attacker's ad campaigns.

🌐 Proactive Defense: Google Play Protect will now alert users to the presence of these malicious apps and prompt for their removal, demonstrating a commitment to user security.

🔗 [Source](https://www.humansecurity.com/learn/blog/satori-threat-intelligence-alert-slopads-covers-fraud-with-layers-of-obfuscation/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All domains.
- `malicious-apps.txt`: List of malicious Google Play apps in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
