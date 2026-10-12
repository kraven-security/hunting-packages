# Malvertising Campaign Abuses Bing Search Links in Google Ads to Deliver Fake Claude Installers 

Security researchers have uncovered a novel malvertising technique in which attackers embed legitimate Bing search results into Google Search ads to hide malicious redirect chains. By leveraging cross-engine redirects, threat actors bypass Google's ad review controls to target users searching for AI tools with fake software installers and ClickFix social engineering lures.

Key takeaways

**🎯 Target:** Mac users, software developers, and organizational personnel searching for AI development tools and productivity applications via web search engines.

**💡 Insight:** To trick ad verification algorithms, attackers configure sponsored Google Ads to point to a legitimate Bing search result for a compromised domain; the malicious payload and ClickFix page are only served when the victim completes this specific cross-engine path.

**☑️ Recommendation 1:** Deploy enterprise ad-blocking extensions or DNS filtering to prevent employees from clicking on sponsored search results and unvetted ad networks.

**☑️ Recommendation 2:** Educate employees to download software strictly from primary, verified vendor domains and to avoid executing unverified Terminal commands prompted by web pages.

**☑️ Recommendation 3:** Implement browser-level threat detection solutions capable of inspecting multi-stage redirect chains, cloaked web assets, and real-time browser execution threats.

🔗 [Source](https://pushsecurity.com/blog/adception-malvertising-another-search-engines-search-results)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
