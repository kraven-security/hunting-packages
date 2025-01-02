# Hackers Hijack 35 Google Chrome Extensions in Phishing Campaign

Hackers have compromised 35 Google Chrome extensions by exploiting a phishing campaign against developers, injecting data-stealing code into extensions used by over 2.6 million people. Immediate checks and updates are advised.

🔍 Threat Hunting Package: https://github.com/kraven-security/hunting-packages/tree/main/osint-articles/2025-01-02%20Hackers%20Hijack%2035%20Google%20Chrome%20Extensions%20in%20Phishing%20Campaign

Key takeaways:

🎣 Phishing Campaign: Hackers targeted Chrome extension developers with phishing emails, tricking them into granting access to update or modify their extensions with malicious code.

🧑‍💻 Developer Exploitation: The campaign began with emails that looked like official Chrome Web Store policy violation notices, leading developers to authorize a rogue OAuth application.

💻 Malicious Code Injection: This allowed attackers to inject malware into legitimate extensions, stealing user data like cookies and access tokens.

📊 Widespread Impact: Approximately 35 extensions, with a collective user base of 2.6 million, were affected, highlighting the scale and potential damage of this attack.

⚠️ Security Advice: Users should review their installed extensions, update or remove suspicious ones, and monitor permissions granted to extensions.

🔗https://medium.com/extensiontotal/when-chrome-extensions-turn-against-us-the-cyberhaven-breach-and-beyond-9e35e59e1bff

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `ip.txt`: List of endpoint IOCs in the article.
- `domains.txt`: List of network IOCs in the article.
- `chrome-extension-ids.txt`: List of malicious Chrome extentions based on their IDs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
