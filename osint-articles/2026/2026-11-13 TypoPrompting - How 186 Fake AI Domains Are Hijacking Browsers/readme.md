# TypoPrompting: How 186 Fake AI Domains Are Hijacking Browsers

A massive new campaign dubbed "TypoPrompting" exploits typos in 27 popular AI brands, including ChatGPT, Claude, and Perplexity, to deliver ClickFix lures and browser-hijacking malware. By tricking users into running fake "security checks," attackers seamlessly deploy search-hijacking extensions and steal sensitive corporate queries.

Key takeaways:

**🎯 Target:** Remote workers, developers, and everyday enterprise users who frequently access AI tools and are prone to mistyping URLs, inadvertently exposing internal corporate data and credentials.

**💡 Insight:** Attackers bypass automated defenses by exploiting the "social layer"; using ClickFix lures, they convince users to manually copy and run hidden PowerShell commands disguised as a standard CAPTCHA or Cloudflare security verification step.

**☑️ Recommendation 1:** Instruct employees to bookmark official AI tool URLs, or enforce managed browser shortcuts via an approved application catalog, to completely eliminate the risk of typosquatting.

**☑️ Recommendation 2:** Immediately audit installed browser extensions across your organization, restricting unauthorized add-ons and removing known malicious extensions like "Quick Search" that silently route queries to attacker-controlled servers.

**☑️ Recommendation 3:** Implement strict security awareness training that specifically highlights the danger of fake "verification prompts" that ask users to open a terminal, copy text, or run manual commands to access a webpage.

🔗 [Source](https://www.island.io/blog/typoprompting-from-ai-typos-to-malware)

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
