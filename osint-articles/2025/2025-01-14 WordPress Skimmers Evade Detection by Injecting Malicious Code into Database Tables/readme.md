# WordPress Skimmers Evade Detection by Injecting Malicious Code into Database Tables

A stealthy campaign targeting WordPress e-commerce sites injects malicious JavaScript into database tables, evading common security scans. This skimmer activates on checkout pages to steal payment details, highlighting a sophisticated method to remain undetected.

Key takeaways:

🛒 E-commerce Targeting: The skimmer focuses on WordPress sites, particularly those with checkout pages, to steal sensitive payment information.

📊 Database Injection: Malicious code is embedded in the WordPress wp_options table under the widget_block option, making it hard for file-based scans to detect.

🧑‍💻 Activation Method: The malware only activates on specific pages, enhancing its stealth capabilities by not appearing during regular site visits.

🔍 Security Evasion: By hiding within the database, it bypasses many traditional malware detection tools that scan files rather than database contents.

⚠️ Rising Threat: This technique signifies an evolution in skimmer malware, urging site owners to reconsider their security measures beyond just file integrity checks.

🔗 https://buff.ly/42bbpnm 

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All domains.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
