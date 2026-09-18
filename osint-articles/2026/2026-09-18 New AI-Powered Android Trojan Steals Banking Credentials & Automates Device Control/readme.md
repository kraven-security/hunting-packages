# New AI-Powered Android Trojan Steals Banking Credentials & Automates Device Control 

Cybersecurity researchers at Zimperium zLabs have uncovered "RatHat," an advanced Android Trojan that utilizes generative AI and local Android Debug Bridge (ADB) pairing to execute shell-level actions, steal financial credentials, and maintain persistence even after app uninstallation.

Key takeaways

**🎯 Target**: Android mobile users lured via smishing and malvertising, specifically targeting customers of major banking, cryptocurrency, and mobile payment platforms.

**💡 Insight**: RatHat leverages a generative AI engine to parse the live screen layout (Accessibility tree XML) in real time, converting visual elements into adaptive automated navigation commands (e.g., synthetic clicks and scrolls) that evade static script detection.

**☑️ Recommendation 1**: Implement strict Mobile Device Management (MDM/MAM) policies that block third-party APK side-loading and prohibit unauthorized access to Accessibility permissions and Developer/Wireless Debugging options.

**☑️ Recommendation 2**: Deploy Mobile Threat Defense (MTD) solutions capable of detecting behavioral anomalies such as raw hardware touch-input logging, unauthorized background ADB daemons, and malicious HTML overlay triggers.

**☑️ Recommendation 3**: Update user awareness programs to highlight smishing tactics and educate staff to recognize fake system error overlays designed to stop malware uninstallation.

🔗 [Source](https://zimperium.com/blog/rathat-ai-powered-mobile-threat-is-here-for-your-credentials-bank-accounts)

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
