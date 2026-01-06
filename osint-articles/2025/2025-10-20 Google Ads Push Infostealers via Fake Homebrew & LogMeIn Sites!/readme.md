# Google Ads Push Infostealers via Fake Homebrew & LogMeIn Sites!

A new malvertising campaign is targeting macOS developers and other users, using Google Ads to promote fake websites for popular tools like Homebrew, LogMeIn, and TradingView. These sites use "ClickFix" social engineering tactics to deliver potent infostealing malware.

Key takeaways:

🔒 Malvertising Campaign: The attackers are using paid Google Ads to ensure their malicious sites appear at the top of search results, luring in unsuspecting users. 

🛡️ "ClickFix" Tactic: The fake sites trick users into copying and pasting a malicious curl command into their Terminal, often disguised as an installation step or a "security confirmation." 

💡 Potent Infostealers: The attack installs the AMOS (Atomic macOS Stealer) or Odyssey malware, which are designed to steal a wide range of sensitive data. 

🌐 Data at Risk: The malware exfiltrates browser credentials, cookies, cryptocurrency wallet data, and sensitive files from the macOS Keychain.

🔗 [Source](https://hunt.io/blog/macos-odyssey-amos-malware-campaign)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
