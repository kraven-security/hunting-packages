# Massive VPN Extension Hijack Exposed: Over 700 Chrome Add-ons Hijacking Browser  

Security researchers uncovered a campaign where 737 Chrome VPN extensions impersonated legitimate brands to intercept browser sessions. Targeting Russian-speaking users seeking to bypass censorship, the operation highlights the significant risks posed by unverified extensions.

Key takeaways:

**🎯 Target**: Russian-speaking individuals seeking to bypass censorship and access blocked services like Instagram and ChatGPT, utilizing free VPN and proxy extensions.

**💡 Insight**: The threat actors employed a clever detection evasion technique using DNS-over-HTTPS (DoH) via Cloudflare and Google to resolve their malicious proxy domains, ensuring that no plaintext DNS queries were emitted by the victim's machine.

**☑️ Recommendation 1**: Immediately review all installed browser extensions, specifically VPNs or proxies, and remove any that are unfamiliar, unverified, or request excessive permissions.

**☑️ Recommendation 2**: Implement enterprise-wide application whitelisting for browser extensions, permitting only explicitly approved and vetted add-ons to be installed on corporate devices.

**☑️ Recommendation 3**: Enhance network monitoring capabilities to detect and alert on anomalous proxy connections, even those attempting to obscure their traffic through techniques like DoH.

🔗 [Source](https://socket.dev/blog/chrome-vpn-extension-impersonation)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-chrome-extensions.txt`: List of all malicious Chrome extensions by ID.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
