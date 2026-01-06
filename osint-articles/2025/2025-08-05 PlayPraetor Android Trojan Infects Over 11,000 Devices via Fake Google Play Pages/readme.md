# PlayPraetor Android Trojan Infects Over 11,000 Devices via Fake Google Play Pages

A new Android RAT, PlayPraetor, is rapidly spreading through fake Google Play pages promoted on Meta platforms, infecting over 11,000 devices. The malware steals banking credentials and cryptocurrency wallet information by using deceptive overlay screens and keylogging.

Key takeaways:

🔍 Sophisticated Distribution: Attackers use Meta Ads and SMS messages to distribute links to fraudulent Google Play Store pages, tricking users into downloading the malware.

🤖 Remote Access & Control: PlayPraetor gains full remote control of infected devices by abusing Android's accessibility services, allowing for live screen streaming and credential theft from nearly 200 financial apps.

🌐 Global MaaS Operation: The campaign is managed as a malware-as-a-service (MaaS) with a Chinese command-and-control panel and multiple affiliates, targeting users in Europe, South America, and Asia.

🛡️ Evasive Variants: Five different variants of the malware exist, each with specialized functions like on-device fraud and phishing, making it a versatile and dangerous threat.

🔒 Actionable Advice: Be cautious of unsolicited links from social media ads and messages. Always verify the authenticity of app store pages before downloading and installing applications.

🔗 [Source](https://www.cleafy.com/cleafy-labs/playpraetors-evolving-threat-how-chinese-speaking-actors-globally-scale-an-android-rat)

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
