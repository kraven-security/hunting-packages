# The Trigram Campaign: Fake Jobs and Real Infostealers Target Devs 

Stormshield's Cyber Threat Intelligence team has uncovered the "Trigram" campaign, a sophisticated operation likely linked to North Korea that targets developers with fake job offers to deliver infostealers. Attackers are impersonating over 50 companies and using a dedicated tracking platform to trick victims into executing malicious commands under the guise of "anti-spam" verifications.

Key takeaways:

**🎯 Target:** Developers and professionals in the AI, blockchain, and logistics sectors across Europe and the United States.

**💡 Insight:** The threat actors utilize a custom back-office platform to track victims end-to-end, employing a unique initial access technique where candidates are tricked into copying and pasting a malicious command into their terminal to pass a fake "spam verification" check.

**☑️ Recommendation 1:** Never copy and paste commands from a web browser directly into your terminal, especially if prompted by a "verification" check during an online application process.

**☑️ Recommendation 2:** Always verify the legitimacy of recruiters, job offers, and company domains through official, secondary channels before engaging.

**☑️ Recommendation 3:** Implement robust endpoint monitoring to detect suspicious terminal commands, such as PowerShell or Bash initiating unauthorized network requests, and enforce strict script execution policies across the organization.

🔗 [Source](https://www.stormshield.com/news/cti-trigram-campaign/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara-rules.yar`: List of YARA detection rules in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
