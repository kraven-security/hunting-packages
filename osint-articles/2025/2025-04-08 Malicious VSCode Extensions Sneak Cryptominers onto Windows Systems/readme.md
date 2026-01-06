# Malicious VSCode Extensions Sneak Cryptominers onto Windows Systems

Beware developers! Nine fake VSCode extensions on Microsoft’s Marketplace, posing as legit tools, have infected Windows users with XMRig crypto miners. Over 300K installs and counting!

Key takeaways:

🕵️‍♂️ Stealthy Imposters: Nine VSCode extensions, uploaded April 4, 2025, mimic popular dev tools but secretly install XMRig to mine Ethereum and Monero on Windows systems.

📈 Massive Reach: With over 300,000 installs (likely inflated for credibility), these extensions from a single shady publisher evaded Microsoft’s initial review, per ExtensionTotal’s findings.

🦠 Sneaky Execution: A PowerShell script disables defenses, escalates privileges via DLL hijacking, and runs the miner—then installs the real extension to mask the attack.

🛡️ Still Active: Reported to Microsoft, these extensions remain on the Marketplace as of April 7, 2025, urging devs to verify sources and scan systems.

🔗 https://buff.ly/ZYZVqHE

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-packages.txt`: List of malicious VSCode packages identified.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
