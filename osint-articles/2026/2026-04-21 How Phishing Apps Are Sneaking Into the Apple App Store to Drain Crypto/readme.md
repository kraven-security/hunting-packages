# How Phishing Apps Are Sneaking Into the Apple App Store to Drain Crypto

Kaspersky researchers have identified a wave of more than 20 malicious apps on the official Apple App Store that masquerade as popular crypto wallets such as MetaMask and Ledger to steal recovery phrases. These apps bypass initial security checks by redirecting users to external sites that use iOS provisioning profiles to install trojanized versions of legitimate wallet software.

Key takeaways

🎯 Target: iOS users and cryptocurrency investors who use hot wallets like MetaMask, Coinbase, Ledger Live, and Trust Wallet.

💡 Insight: This campaign exploits a "hidden in plain sight" strategy, using the App Store's reputation as a first-stage lure, then leveraging iOS configuration profiles (typically used for enterprise app testing) to install malware that traditional App Store reviews can't easily detect.

☑️ Recommendation 1: Immediately audit your iOS device for any unfamiliar "Configuration Profiles" in Settings > General > VPN & Device Management and delete any that you did not explicitly authorize for work or known trusted services.

☑️ Recommendation 2: For long-term asset protection, transition the majority of your holdings to a dedicated hardware wallet and never enter your seed phrase into any mobile app or website, even if it appears to be linked from an official store.

☑️ Recommendation 3: Stay vigilant by double-checking the "Developer" information in the App Store before downloading; many of these fake apps use generic or suspicious developer names that do not match the official companies (e.g., ConsenSys for MetaMask).

🔗 [Source](https://securelist.com/fakewallet-cryptostealer-ios-app-store/119474/)

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
