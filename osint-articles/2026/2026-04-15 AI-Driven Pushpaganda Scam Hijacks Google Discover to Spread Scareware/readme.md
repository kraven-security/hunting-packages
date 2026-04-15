# AI-Driven "Pushpaganda" Scam Hijacks Google Discover to Spread Scareware

Cybersecurity researchers have unmasked a massive ad fraud campaign that weaponizes AI-generated content and SEO poisoning to infiltrate personalized Google Discover feeds. This "Pushpaganda" operation coerces users into enabling persistent browser notifications that deliver alarming scareware and fake legal threats, generating millions in illicit revenue.

Key takeaways

🎯 Target: Android and Chrome users globally who rely on the Google Discover feed for news and personalized content.

💡 Insight: This campaign represents a shift toward "AI-velocity" fraud, in which threat actors use generative AI to mass-produce deceptive news stories that bypass traditional content filters and hijack trusted, high-traffic discovery platforms.

☑️ Recommendation 1: (Short-term) Audit your browser and mobile device settings to immediately disable notifications from unknown or suspicious websites, especially those that use alarming language or "legal notices" to grab attention.

☑️ Recommendation 2: (Long-term) Organizations should pivot their awareness training toward "algorithmic literacy," teaching users that content appearing in trusted feeds like Google Discover or social media trends can still be weaponized via AI-driven misinformation and SEO manipulation.

🔗 [Source](https://www.humansecurity.com/learn/resource/satori-threat-intelligence-alert-pushpaganda-manipulates-google-discovery-feeds-with-ai-generated-content-to-spread-malicious-notifications/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
