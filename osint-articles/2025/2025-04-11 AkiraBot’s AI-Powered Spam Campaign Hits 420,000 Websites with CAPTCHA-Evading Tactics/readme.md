# AkiraBot’s AI-Powered Spam Campaign Hits 420,000 Websites with CAPTCHA-Evading Tactics

Since September 2024, AkiraBot has spammed 80,000+ websites, using OpenAI’s GPT-4o-mini to craft tailored messages that bypass CAPTCHA protection. Targeting small business sites, it promotes shady SEO services, highlighting AI’s growing role in cyber threats.

Key takeaways:

🤖 AI-Driven Spam: AkiraBot leverages OpenAI’s GPT-4o-mini to generate unique, context-aware spam messages for website contact forms and chat widgets, making detection by traditional spam filters challenging.

🌐 Massive Reach: Since September 2024, it has targeted over 420,000 unique domains, successfully spamming at least 80,000. It focuses on small—to medium-sized businesses using platforms like Shopify, GoDaddy, Wix, and Squarespace.

🛡️ CAPTCHA Bypass: The bot employs advanced techniques, including proxy rotation and services like Capsolver, to evade CAPTCHA systems, ensuring its spam reaches its intended targets.

📊 Tracking & Evolution: AkiraBot logs activities in a “submissions.csv” file and posts metrics to Telegram. It also updates regularly to target new platforms and dodge defenses.

🔗https://buff.ly/Pzw3ZXF

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
