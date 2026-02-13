# Lazarus Group’s New Trap: Is Your "Coding Test" a Trojan?

The North Korean-linked Lazarus Group has launched a sophisticated recruitment-themed campaign, dubbed "Graphalgo," targeting developers across LinkedIn and Reddit. By masquerading as a blockchain firm called "Veltrix Capital," threat actors are tricking candidates into running malicious "coding assessments" that secretly install Remote Access Trojans (RATs) via poisoned npm and PyPI dependencies.

Key takeaways

🔒 The "Clean First" Tactic: Attackers published legitimate-looking versions of packages like bigmathutils to build trust and high download counts before pushing malicious updates—a classic bait-and-switch supply chain attack.

🚨 Weaponized Job Interviews: If a "recruiter" asks you to clone a GitHub repo for a technical test, be extremely cautious; these projects are designed to trigger the infection through hidden dependencies rather than the code you're actually reviewing.

🛡️ MetaMask & Crypto Focus: The deployed malware specifically scans for the MetaMask browser extension, signaling a clear intent to exfiltrate seed phrases and conduct financial theft once a developer's machine is compromised.

🌐 Infrastructure Mimicry: The group is building entire digital ecosystems—complete with fake company domains and LinkedIn personas—to bypass the skepticism of even experienced security and software engineers.

🔗 [Source](https://www.reversinglabs.com/blog/fake-recruiter-campaign-crypto-devs)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-packages.txt`: List of malicious PyPi and NPM packages article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
