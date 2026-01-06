# Legacy Python Scripts Expose PyPI Packages to Domain Takeover

Researchers have identified a critical risk in legacy bootstrap.py scripts used by multiple PyPI packages, which could allow attackers to execute malicious code by taking over the abandoned python-distribute[.]org domain. This vulnerability highlights how obsolete dependencies can create dormant but dangerous attack surfaces in modern development environments.

Key takeaways:

⚠️ Legacy Domain Risk: The bootstrap.py script fetches installation files from python-distribute[.]org, a domain that is currently up for sale and could be purchased by attackers to serve malware.

📦 Affected Packages: Major packages including tornado, pypiserver, roman, and slapos.core were found to contain the vulnerable script, with slapos.core still shipping it.

🔓 Attack Mechanism: If the script is triggered—manually or via Makefiles—it attempts to download and execute code from the compromised domain, potentially leading to full system compromise.

🐍 Python 2 Context: While the script is written for Python 2 and doesn't run automatically in Python 3 builds, its presence remains a latent threat if developers are tricked into executing it.

🛡️ Immediate Action: Developers using zc.buildout or maintaining legacy Python projects must audit their codebases and remove these obsolete bootstrap scripts to close the attack vector.

🔗 [Source](https://www.reversinglabs.com/blog/bootstrap-script-exposes-pypi-to-domain-takeover-attack)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `malicious-packages.txt`: List of malicious PyPi Python packages.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
