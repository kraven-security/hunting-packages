# Torg Grabber Infostealer Targets 700+ Crypto Wallets

A highly advanced information stealer dubbed "Torg Grabber" is rapidly proliferating by exploiting legitimate web services to hide its tracks and bypass modern browser defenses. This threat specifically targets the "digital keys to the kingdom," using deceptive browser-update lures to harvest credentials and drain cryptocurrency assets at an industrial scale.

Key takeaways

🔒 Advanced Encryption Bypass: Torg Grabber utilizes a custom 20 KB "lockpick" DLL to defeat the "App-Bound Encryption" recently introduced in Chrome and Edge, successfully extracting saved passwords and credit card data.

🚨 Massive Looting Capability: The malware is pre-programmed to recognize and exfiltrate data from 728 different cryptocurrency wallet extensions and 103 password managers, leaving virtually no digital asset untouched.

💡 Deceptive "ClickFix" Tactics: Attackers are using highly realistic fake "Security Update" pop-ups, complete with seven-minute progress bars, to trick users into downloading and executing the payload.

🛡️ Operational Hardening: To defend against this, organizations must move beyond browser-based credential storage and prioritize hardware security keys (FIDO2) that cannot be "grabbed" by software-based stealers.

🔗 [Source](https://www.gendigital.com/blog/insights/research/torg-grabber-credential-stealer-analysis)

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
