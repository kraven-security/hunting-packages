# New VS Code Job Interview Scam Delivers Stealthy Backdoors!

A sophisticated "Contagious Interview" campaign is targeting software engineers by using malicious Visual Studio Code (VS Code) projects disguised as technical assessments to deploy remote access trojans. Attackers are luring developers into cloning repositories that automatically execute malicious payloads the moment the project folder is opened.

Key takeaways:

🚨 The "Folder Open" Trap: Attackers are abusing the tasks.json configuration in VS Code; by setting the runOn: folderOpen option, malicious commands execute automatically if a user grants "Trust" to the repository.

🔒 Targeted Sector Attacks: This campaign specifically focuses on developers within the cryptocurrency, fintech, and blockchain sectors, aiming to hijack privileged access to financial assets and intellectual property.

🛡️ Sophisticated Evasion: Recent iterations of the malware (BeaverTail and InvisibleFerret) use AI-assisted scripts to disguise malicious code as harmless spell-check dictionaries and bypass traditional security filters.

🌐 Infrastructure Exploitation: By hosting payloads on legitimate platforms like Vercel and using GitHub/Bitbucket for delivery, threat actors effectively blend their malicious traffic with standard development workflows.

💡 Critical Defense Tip: Never grant "Trust" to a VS Code project from an unverified source without first auditing the .vscode/tasks.json and hidden scripts within the repository.

🔗 [Source](https://www.jamf.com/blog/threat-actors-expand-abuse-of-visual-studio-code/)

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
