# North Korean Lazarus Hackers Target Developers with Malicious npm Packages

North Korean Lazarus hackers are at it again, infecting hundreds via six malicious npm packages designed to steal credentials and crypto data. Stay safe—vet your downloads and watch for typosquatting traps!

Key takeaways:

🕵️‍♂️ Lazarus Strikes: Six malicious npm packages linked to North Korea’s Lazarus group have been uncovered. They have been downloaded 330 times and target developers with stealthy attacks.

🔓 Data Theft: These packages steal account credentials, install backdoors, and extract cryptocurrency info, using typosquatting to mimic legit libraries like "is-buffer."

💻 Active Threat: Despite discovery, the packages remain live on npm and GitHub, amplifying risks for unwary developers integrating them into projects.

🛡️ Protect Yourself: To avoid this cyber trap, developers must double-check package sources, avoid typosquatting names, and monitor supply chains.

🔗 https://buff.ly/4UIGOqv

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `mitre-attack-ttps.txt`: List of MITRE ATT&CK techniques observed.
- `malicious-packages.txt`: List of malicious packages in the article.
- `personas.txt`: List of threat actor identifiers observed.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
