# Ghost Campaign Uses 7 npm Packages to Steal Crypto Wallets and Credentials

Cybersecurity researchers have uncovered a deceptive new supply chain operation dubbed the "Ghost campaign" that leverages malicious npm packages to target developers. These packages use sophisticated social engineering, including fake installation logs, to trick users into granting administrative privileges and deploying data-stealing malware.

Key takeaways:

🕵️‍♂️ Deceptive Installation: The campaign uses "Ghost" packages that display fake npm install logs, complete with progress bars and simulated delays, to mask malicious activity and make the setup appear legitimate.

⚠️ Privilege Escalation: During the fake installation process, the packages prompt users for their sudo password under the guise of "fixing" or "optimizing" the environment, which is then used to execute a Remote Access Trojan (RAT).

🛠️ Malicious Payload: Once active, the RAT exfiltrates cryptocurrency wallets, browser credentials, and other sensitive data to a command-and-control (C2) server.

🔒 Mitigation Urged: Developers should never enter sudo passwords for standard package installations and are encouraged to verify package authors and use automated security scanning to detect supply chain threats.

🔗 [Source](https://www.reversinglabs.com/blog/npm-fake-install-logs-rat)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.
- `malicious-packages.txt`: List of malicious NPM packages in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
