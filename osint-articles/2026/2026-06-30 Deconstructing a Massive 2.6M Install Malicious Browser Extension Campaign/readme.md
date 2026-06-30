# Deconstructing a Massive 2.6M Install Malicious Browser Extension Campaign 

Microsoft disrupted 'StegoAd,' a malware operation that used 119 malicious browser extensions to compromise 2.6 million users. By hiding code inside images and fonts, the attackers bypassed security scanners to commit credential theft, session hijacking, and ad fraud.

Key takeaways

**🎯 Target**: Everyday web browser users downloading common utilities (such as ad blockers, VPNs, and translators), with a secondary focus on harvesting Google and WordPress administrator credentials.

**💡 Insight**: The campaign stands out for its advanced use of steganography, hiding malicious payloads within standard PNG icons, WebP containers, and WOFF2 font files, coupled with multi-layered evasion logic, including a 3- to 5-day dormancy gate and automated DevTools detection to evade security sandboxes.

**☑️ Recommendation 1**: Audit all active browser extensions immediately across your environment (`edge://extensions` or equivalent) against known StegoAd indicators of compromise, and mandate hardware-based multi-factor authentication (FIDO2 keys) to neutralize intercepted credentials and session theft.

**☑️ Recommendation 2**: Establish long-term protection by implementing strict group policies to restrict browser extension installations to verified publishers only, while enforcing the principle of least privilege regarding browser extension permissions. 

🔗 [Source](https://microsoftedge.github.io/edgevr/posts/Inside-StegoAd-How-We-Disrupted-a-Massive-Malicious-Extension-Campaign/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-extension-ids.txt`: List of malicious extension IDs found in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
