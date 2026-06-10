# Your Scroll Just Became a Security Risk: TikTok & Instagram Reels Are the New Phishing Frontier 

Researchers at ReversingLabs have uncovered two distinct social engineering campaigns that weaponize short-form video content on TikTok and Instagram Reels, turning one of the most trusted parts of your daily digital routine into a malware delivery mechanism.

Key takeaways

**🎯 Target:** Individual users and employees across a broad range of demographics and regions, particularly those seeking free access to premium software such as Spotify or Microsoft Word.

**💡 Insight:** Threat actors manipulate platform algorithms with tutorials that encourage saves and shares, organically amplifying reach. A single malicious video that amassed over 100,000 views used this tactic to distribute Vidar Stealer (a credential-harvesting tool costing as little as $300) via PowerShell. This is particularly effective because users are less skeptical of social media feeds than email phishing.

**☑️ Recommendation 1:** Refresh phishing awareness training to include social media vectors. Staff need to know that a polished TikTok tutorial can be just as dangerous as a phishing email, and that no legitimate vendor will ever instruct them to run a PowerShell command they found on social media.

**☑️ Recommendation 2:** Audit who can run PowerShell and install software on corporate devices. Most of the software being dangled in these videos is leisure software, but the technique works for anything. Limit exposure at the endpoint before someone follows a tutorial on their lunch break.

**☑️ Recommendation 3:** Build social media reporting into your security culture. Employees who spot suspicious content should know where to flag it, on both personal and work devices. Add the published indicators of compromise, domains, and file hashes to your threat intel feeds today.

🔗 [Source](https://www.reversinglabs.com/blog/social-media-attacks-phishing)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-actor-accounts.txt`: List of social media accounts associated with threat actors invovled.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
