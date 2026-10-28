# Magecart Group Hijacks Convertr Checkouts via Plausible Analytics

A notorious Magecart threat group compromised the Convertr ecommerce platform by injecting a card skimmer into an outdated Plausible analytics script. This supply chain attack successfully intercepted sensitive payment data and taxpayer numbers from shoppers across dozens of Brazilian fashion brands.

Key takeaways:

**🎯 Target:** Dozens of Brazilian fashion brands utilizing the Convertr ecommerce platform, alongside their shoppers whose credit card details and CPF (taxpayer) numbers were actively exfiltrated.

**💡 Insight:** The threat actors escalated from targeting individual stores to a broad supply chain attack, likely by exploiting a known, unpatched vulnerability (CVE-2026-8467) in Convertr's self-hosted Plausible analytics server to infect a script loaded by every checkout page.

**☑️ Recommendation 1:** If your organization self-hosts Plausible Community Edition, immediately upgrade to version 3.2.1 or later and audit your server access logs for suspicious requests to the `/storybook` endpoint.

**☑️ Recommendation 2:** Consumers who recently made purchases via Convertr-hosted checkouts (since October 24\) should proactively contact their banks to replace their payment cards and monitor their CPF for identity fraud.

**☑️ Recommendation 3:** Ecommerce platforms must implement Subresource Integrity (SRI) and continuous file monitoring for all external and self-hosted scripts to instantly detect and block unauthorized malicious code injections.

🔗 [Source](https://sansec.io/research/convertr-plausible-supply-chain-attack)

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
