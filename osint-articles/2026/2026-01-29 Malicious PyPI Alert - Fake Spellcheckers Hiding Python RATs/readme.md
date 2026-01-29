# Malicious PyPI Alert: Fake Spellcheckers Hiding Python RATs

Developers, it's time to audit your requirements! Researchers have uncovered sophisticated malicious packages on the Python Package Index (PyPI) that masquerade as spellcheckers to deliver a stealthy Remote Access Trojan (RAT).

Key takeaways:

📦 Deceptive Branding: The packages spellcheckerpy and spellcheckpy mimicked the popular pyspellchecker library, successfully tricking developers into over 1,000 downloads before being removed.

🕵️ Advanced Obfuscation: In a clever move to evade detection, the Base64-encoded payload was concealed inside a Basque language dictionary file (eu.json.gz), rather than the typical __init__.py script.

🌑 The "Dormant" Strategy: The threat actor published several harmless versions of the code first to bypass initial security checks, only "flipping the switch" to activate the malicious trigger in version 1.2.0.

💻 Total System Access: Once the package is imported, the RAT fingerprints the host machine and connects to a remote server, allowing attackers to execute arbitrary commands and steal sensitive data.

🤖 The AI Hallucination Risk: This campaign highlights the rise of "slopsquatting," where hackers claim package names that AI coding assistants frequently hallucinate, leading developers to unknowingly install malware.

🔗 [Source](https://www.aikido.dev/blog/malicious-pypi-packages-spellcheckpy-and-spellcheckerpy-deliver-python-rat)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
