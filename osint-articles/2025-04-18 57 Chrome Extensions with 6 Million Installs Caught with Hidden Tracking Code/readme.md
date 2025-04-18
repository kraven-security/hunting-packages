# 57 Chrome Extensions with 6 Million Installs Caught with Hidden Tracking Code

Secure Annex reveals that 57 Chrome extensions, with 6M installs, hide tracking code that spies on browsing and accesses cookies. Many have been removed, but users must check their extensions to stay safe from these sneaky threats.

Key takeaways:

🕵️‍♂️ 57 Chrome extensions, totaling 6 million installs, embed hidden tracking code that monitors browsing, accesses cookies, and may execute remote scripts, posing significant privacy risks.

🌐 Extensions like “Fire Shield Extension Protection” are often unlisted, requiring direct URLs for installation, hinting at distribution through malicious ads or dubious websites.

🔍 Secure Annex’s John Tuckner exposed the extensions’ excessive permissions and obfuscated code, leading to many being removed from the Chrome Web Store after his findings.

⚠️ While no confirmed theft of passwords or cookies was detected, the extensions’ opaque behavior and risky capabilities suggest potential spyware, urging users to audit their browser add-ons.

🔗 https://buff.ly/YsYtd8L

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `extention-ids.txt`: List of malicious exention IDs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
