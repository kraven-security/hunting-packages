# Vietnamese Hackers Deploy PXA Stealer in Widespread Campaign

Vietnamese-speaking cybercriminals are behind a large-scale attack using the Python-based PXA Stealer malware to infect over 4,000 systems across 62 countries. This campaign has resulted in the theft of over 200,000 passwords and 4 million browser cookies, which are then sold through a subscription-based ecosystem on Telegram.

Key takeaways:

🕵️‍♂️ Sophisticated Evasion: The malware uses advanced techniques like DLL side-loading and a hardened command-and-control pipeline to evade antivirus detection and security analysis.

🍪 Extensive Data Theft: PXA Stealer is designed to extract cookies from Chromium-based browsers, bypassing encryption, and also targets data from VPN clients, cloud utilities, and apps like Discord.

🌐 Criminal Ecosystem: The stolen data is exfiltrated via Telegram and resold on criminal platforms, fueling a broader cybercriminal economy and enabling further attacks.

🛡️ Evolving Threat: The malware is continuously updated with new capabilities, making it a persistent and evolving threat to users worldwide.

🔒 User Action: Users should be vigilant about suspicious downloads, keep their software and browsers updated, and use multi-factor authentication to protect their accounts from credential theft.


🔗 [Source](https://www.sentinelone.com/labs/ghost-in-the-zip-new-pxa-stealer-and-its-telegram-powered-ecosystem/)

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
