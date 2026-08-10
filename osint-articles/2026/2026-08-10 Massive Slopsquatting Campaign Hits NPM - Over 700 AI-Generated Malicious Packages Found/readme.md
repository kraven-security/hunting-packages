# Massive "Slopsquatting" Campaign Hits NPM: Over 700 AI-Generated Malicious Packages Found

The "Slopsquatting" supply chain attack has flooded the NPM registry with over 700 AI-generated malicious packages. Attackers are deploying the "NUL1DROPPER" malware to target mobile SDKs and install Remote Access Trojans across Windows, Mac, and Linux systems.

Key takeaways:

**🎯 Target:** Developers using the NPM registry, specifically those installing mobile Software Development Kits (SDKs) on Windows, macOS, or Linux systems.

**💡 Insight:** This campaign highlights the evolution of "typosquatting" into "slopsquatting," where threat actors use AI to automate the mass generation of fake, plausible-looking packages to overwhelm registries and increase the likelihood of accidental downloads. Furthermore, bypassing traditional install scripts makes the NUL1DROPPER highly evasive.

**☑️ Recommendation 1:** Implement strict dependency pinning and lockfiles (e.g., `package-lock.json`) to prevent unintended updates to malicious package versions.

**☑️ Recommendation 2:** Utilize software composition analysis (SCA) tools to scan your development environments for known malicious packages and anomalous code behaviors before deployment.

**☑️ Recommendation 3:** Educate development teams on the risks of AI-generated "slopsquatting" and enforce manual code review for any newly introduced, unverified dependencies, especially those related to mobile SDKs.

🔗 [Source](https://opensourcemalware.com/blog/russian-ai-slopsquatting-npm-campaign)

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
