# Malicious RubyGems Masquerade as Fastlane Plugins to Steal Telegram API Data

Two malicious RubyGems packages, posing as Fastlane CI/CD plugins, have been found stealing Telegram API data by redirecting requests to attacker-controlled servers. Developers are advised to remove these packages immediately and rebuild any affected mobile binaries to prevent potential data breaches.

Key takeaways:

🕵️ Supply Chain Attack: Discovered by Socket researchers, two malicious RubyGems packages, fastlane-plugin-telegram-proxy and fastlane-plugin-proxy_teleram, impersonate legitimate Fastlane CI/CD plugins to target Telegram API data.

🔓 Data Theft Mechanism: These packages redirect Telegram API requests to attacker-controlled servers, intercepting sensitive data such as chat IDs, message content, attached files, proxy credentials, and bot tokens, which can facilitate bot hijacking.

🚨 Exploitation Window: The attack leverages Telegram bot tokens that remain valid until manually revoked, providing attackers with prolonged opportunities for data exfiltration and persistence.

🛡️ Developer Action Required: Developers who installed these packages, live on RubyGems since late May 2025, should remove them immediately, revoke compromised tokens, and rebuild any mobile binaries created post-installation.

🌐 Context and Timing: The attack emerged shortly after Vietnam’s Telegram ban, highlighting rapid exploitation by threat actors targeting CI/CD pipeline integrations.

🔗 https://buff.ly/mnOGpco

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All ntework IOCs.
- `network-iocs.txt`: List of network IOCs in the article.
- `mitre-ttps.txt`: MITRE ATT&CK tactics, techniques, and procedures in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
