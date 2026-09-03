# 13 Malicious Packagist Themes Deliver iOS Spyware to Steal Crypto Wallets 

Threat actors are distributing 13 malicious Composer themes via Packagist to compromise Vietnamese movie and comic streaming websites. When installed, these themes inject hostile JavaScript that forces mobile users into gambling redirects and delivers sophisticated iOS spyware to steal sensitive device data and cryptocurrency wallet seeds.

Key takeaways:

**🎯 Target**: The campaign targets mobile visitors, specifically those on unpatched iOS devices (iOS 18.4 to 18.6.x), who visit Vietnamese streaming websites running the trojanized OphimCMS and KKPhim themes.

**💡 Insight**: The iOS payload is highly advanced, utilizing a WebKit-to-kernel exploit chain (including CVE-2025-31277 and CVE-2025-43529) to bypass sandboxing, escalate privileges, and extract keychain data from seven major crypto wallet apps (e.g., Trust Wallet, Phantom, OKX).

**☑️ Recommendation 1**: Website administrators using OphimCMS or KKPhim should immediately audit their installed themes and remove any packages from the identified malicious vendors (e.g., ophimcms, haiau009, chilltvcms, vsmov, vsphim).

**☑️ Recommendation 2**: iOS users must urgently update their iPhones and iPads to the latest operating system version (iOS 26.1 or later) to patch the exploited WebKit and AppleM2ScalerCSCDriver kernel vulnerabilities.

**☑️ Recommendation 3**: Developers should implement stringent software composition analysis (SCA) and rigorously vet open-source dependencies before deployment to prevent supply chain attacks via trojanized themes.

🔗 [Source](https://socket.dev/blog/packagist-themes-ios-spyware)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-packages.txt`: List of malicious packages in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
