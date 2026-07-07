# Sophisticated Phishing Kits Impersonate Big Brands to Hijack Google Ecosystems  

Threat actors are using highly convincing recruitment-themed phishing campaigns that masquerade as brands like "Google Careers" to steal credentials. By using structural HTML-splitting and dynamic C2 backends to bypass security scanners, these attacks grant adversaries full access to a victim's email, files, and cloud data.

Key takeaways

**🎯 Target**: Corporate employees, industry professionals, and active job seekers targeted via fraudulent recruitment-themed emails or freelance platform outreach.

**💡 Insight**: This campaign builds trust using a spoofed Cloudflare Turnstile and a fake Google Careers scheduler. To evade security scanners, the phishing kit uses HTML splitting, separating the letters of "Google" into individual `<label>` tags, making the text appear normal to users while remaining invisible to standard signature-based detection.

**☑️ Recommendation 1**: Enforce unphishable, identity-first Multi-Factor Authentication (MFA), such as FIDO2 hardware keys or platform passkeys, across enterprise Google Workspace environments to invalidate credentials captured through dynamic C2 or Adversary-in-the-Middle (AitM) phishing frameworks.

**☑️ Recommendation 2**: Update email security defenses to run inbound message content through text-normalization routines that strip inline HTML wrappers, or employ advanced Optical Character Recognition (OCR) scanners that analyze visual rendering rather than raw source code.

**☑️ Recommendation 3**: Implement continuous threat-hunting rules and domain-blocking templates tailored to isolate inbound traffic or authentication flows interacting with newly registered, lookalike hiring infrastructure (e.g., domains registered via unconventional registrars). 

🔗 [Source](https://gist.github.com/BushidoUK/57c38d5ee75481fb237e968a537de778)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
