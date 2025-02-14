# Hackers Use CAPTCHA Trick on Webflow CDN PDFs to Bypass Security Scanners

Cyber attackers are exploiting Webflow's CDN to distribute fake PDFs embedded with CAPTCHA phishing. These PDFs trick users into entering credit card details while evading security scanners. This sophisticated scheme targets those searching for documents online, urging users to stay vigilant.

Key takeaways:

🔓 CAPTCHA Phishing: Hackers use embedded CAPTCHA images in PDFs hosted on Webflow's CDN to lead users to phishing sites.

📈 Campaign Scale: Since mid-2024, this method has grown significantly, affecting users globally.

📚 Targeting Method: The attack focuses on individuals looking for documents via search engines, leading them to malicious PDFs.

🔍 Security Evasion: Due to the trusted nature of Webflow, attackers can bypass traditional security measures by using it.

🚨 User Caution: Users should be wary of clicking on CAPTCHA images in PDFs from unverified sources online.

🔗 https://buff.ly/4k1pMkP

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All are URLs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
