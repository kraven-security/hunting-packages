# Attackers Weaponize AI Builders & RMM Tools in Novel Campaign

Cybercriminals are spoofing popular cloud HR and payroll platforms by offering non-existent "native desktop apps" via AI-generated landing pages. Downloading the fake software silently installs a legitimate Remote Monitoring and Management (RMM) tool, giving attackers hidden, persistent access to target machines.

Key takeaways:

**🎯 Target**: Corporate employees and organizations relying on cloud-based HR and payroll SaaS platforms.

**💡 Insight**: The campaign relies entirely on legitimate infrastructure, using AI app builders to generate convincing sites, hosting on Vercel and GitHub Releases, and deploying modified ConnectWise ScreenConnect software to evade traditional signature-based malware detection.

**☑️ Recommendation 1**: Educate employees that cloud payroll and HR vendors operate strictly in-browser or via mobile apps, and instruct users to treat any "desktop installer" prompt for these services as an active phishing attempt.

**☑️ Recommendation 2**: Audit enterprise endpoints for unauthorized or anomalous instances of RMM tools, specifically checking for background Windows services tied to unrecognized ConnectWise ScreenConnect installations.

**☑️ Recommendation 3**: Implement robust Application Control policies (such as AppLocker or WDAC) and enforce least-privilege access controls to block standard users from executing unauthorized administrative and remote support utilities. 

🔗 [Source](https://alluresecurity.com/blog/signal-noise-brand-was-real-app-wasnt)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
