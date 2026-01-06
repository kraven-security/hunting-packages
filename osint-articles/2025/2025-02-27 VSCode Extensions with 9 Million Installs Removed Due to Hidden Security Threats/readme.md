# VSCode Extensions with 9 Million Installs Removed Due to Hidden Security Threats

After researchers found malicious code lurking inside, Microsoft yanked two VSCode extensions with nearly 9M installs from the Marketplace. Once trusted by millions, the Material Theme extensions now serve as a reminder to double-check your dev tools!

Key takeaways:

🕵️‍♂️ Malware Detected: Two popular VSCode extensions, "Material Theme - Free" and "Material Theme Icons - Free," with almost 9 million downloads, were pulled after cyber security researchers uncovered malicious code signaling potential intent to harm users.

🔍 Compromise Suspected: Experts suspect either a supply chain attack via a Sanity dependency or a hijacked developer account. The malicious update slips past initial checks until flagged by specialized scanners.

🚫 Swift Removal: Microsoft acted fast, disabling the extensions in VSCode and banning the developer, Mattia Astorino, from the Marketplace, though users are frustrated by the sudden disruption.

💻 Widespread Impact: With over 13 million total installs across Astorino’s extensions, the incident highlights the risks in open-source tools trusted by developers worldwide.

🛡️ Stay Vigilant: Devs are urged to Flatten their codebase, check their extensions, and keep their tools patched to avoid a nasty surprise!

🔗 https://buff.ly/4hVtdYK

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All malicious extensions.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
