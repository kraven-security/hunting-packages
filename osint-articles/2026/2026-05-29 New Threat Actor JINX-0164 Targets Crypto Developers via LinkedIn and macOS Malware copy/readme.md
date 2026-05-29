# FBI Warns of Spoofed FIFA Websites Targeting Fans Ahead of 2026 World Cup 

The FBI has issued a public warning regarding cyber threat actors creating fake websites to exploit the high demand surrounding the 2026 FIFA World Cup. These deceptive sites impersonate the official brand to harvest sensitive personally identifiable information (PII), execute identity theft, and run financial scams through fraudulent ticket and hospitality sales.

Key takeaways

**🎯 Target**: The malicious campaign actively focuses on international soccer fans, World Cup ticket buyers, hospitality consumers, and job seekers looking for tournament-related employment.

**💡 Insight**: Threat actors are heavily leveraging typo-squatting tactics by registering minor misspellings (such as `fiffa[.]com`) and alternative top-level domains (such as `.org` or `.city`) to deceive users who make common typing errors.

**☑️ Recommendation 1**: Always manually type the official URL `www.fifa.com` directly into your browser's address bar or rely on pre-saved bookmarks rather than clicking on internet search results, social links, or sponsored advertisements.

**☑️ Recommendation 2**: Closely inspect online portals for low-quality graphics or suspicious artifacts, and never share sensitive banking information, account PINs, or personal details if a site's legitimacy is uncertain.

**☑️ Recommendation 3**: Establish a long-term corporate and personal protocol to immediately report encountered fraudulent domains, transaction logs, and communication trails to the official IC3 portal to disrupt ongoing infrastructure campaigns.

🔗 [Source](https://www.ic3.gov/PSA/2026/PSA260527)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
