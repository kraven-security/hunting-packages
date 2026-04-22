# New macOS ClickFix Campaign Bypasses Security via Terminal Social Engineering

A macOS ClickFix campaign uses social engineering to trick users into running malicious AppleScript in the Terminal. By posing as software fixes, it bypasses security like Gatekeeper by getting users to self-authorize the infection.

Key takeaways

🎯 Target: macOS users interacting with compromised websites or fake landing pages designed to mimic legitimate services like Google Meet, Zoom, or software update prompts.

💡 Insight: The "ClickFix" strategy avoids traditional file-based malware detection by persuading the victim to copy-paste obfuscated code directly into the Terminal, turning the user into the delivery mechanism for info-stealers.

☑️ Recommendation 1: Implement a "Zero Trust" approach to Terminal usage; strictly prohibit the execution of any commands or scripts sourced from third-party websites or "troubleshooting" pop-ups.

☑️ Recommendation 2: Accelerate the transition to macOS Sequoia to utilize its enhanced permissions model, which requires explicit user consent before the Terminal can access sensitive data or interact with other applications.

🔗 [Source](https://www.netskope.com/blog/macos-clickfix-campaign-applescript-stealers-new-terminal-protections)

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
