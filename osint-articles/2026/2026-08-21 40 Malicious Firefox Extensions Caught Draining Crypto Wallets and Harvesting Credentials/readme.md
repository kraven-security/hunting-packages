# 40 Malicious Firefox Extensions Caught Draining Crypto Wallets and Harvesting Credentials 

Socket uncovered a campaign of 77 interconnected Firefox extensions designed to silently drain cryptocurrency wallets and exfiltrate user credentials. By leveraging remote configuration servers and modified open-source wallet code, attackers bypassed marketplace security checks to steal seed phrases and private keys directly from browser sessions.

Key takeaways:

**🎯 Target:** Firefox users and Web3 cryptocurrency holders utilizing browser extension wallets.

**💡 Insight:** Attackers deployed multi-stage "sleeper" extensions disguised as harmless utilities or sports-score trackers. Once installed, these add-ons queried remote databases (such as Supabase) to swap innocent interfaces for malicious phishing forms or run modified wallet code that intercepted 12- and 24-word recovery seed phrases before local encryption.

**☑️ Recommendation 1:** Immediately uninstall suspicious Firefox extensions and assume any seed phrase, private key, or password exposed to a malicious extension is compromised; transfer funds to a brand-new wallet with fresh seed keys.

**☑️ Recommendation 2:** Implement strict browser extension allow-listing policies across enterprise environments to restrict unauthorized add-ons from executing inside sensitive user sessions.

**☑️ Recommendation 3:** Shift high-value cryptographic key management to physical hardware wallets that isolate private seed phrases from vulnerable web browser environments.

🔗 [Source](https://socket.dev/blog/firefox-crypto-wallet-theft)

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
