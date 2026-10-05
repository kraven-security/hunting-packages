# China-Aligned Threat Group TA419 Impersonates Experts to Target US AI Policy Circles 

China-aligned threat actor TA419 is executing targeted social engineering campaigns that impersonate prominent AI policy experts, economists, and tech executives to compromise high-value accounts. By initiating benign conversations around AI policy before deploying custom Browser-in-the-Browser (BitB) phishing pages, the group seeks to harvest cloud credentials and gather strategic intelligence on US AI regulation and export controls.

Key takeaways:

**🎯 Target**: AI policy thinkers, researchers, and former government officials across US and Japan-based think tanks, higher education, defense contractors, and legal institutions.

**💡 Insight**: TA419 leverages "hallucinated credibility"—impersonating real authorities (including Anthropic personnel and former White House staff) through benign outreach on topics such as military AI integration before delivering multi-stage links that launch Frameless Browser-in-the-Browser (BitB) AitM credential-phishing pages.

**☑️ Recommendation 1**: Establish mandatory out-of-band verification channels to validate unsolicited peer outreach or collaboration invites before clicking links or engaging with shared materials.

**☑️ Recommendation 2**: Enforce phishing-resistant multi-factor authentication (such as FIDO2/WebAuthn hardware keys) to neutralize Adversary-in-the-Middle (AitM) credential and token theft.

**☑️ Recommendation 3**: Implement Zero Trust identity-aware access controls and continuous session risk monitoring to restrict cloud repository access and prevent lateral movement if credentials are compromised. 

🔗 [Source](https://www.proofpoint.com/us/blog/threat-insight/hallucinating-credibility-china-aligned-ta419-impersonates-its-way-us-ai-policy)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `attacker-email-addresses.txt`: List of attacker email addresses seen in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
