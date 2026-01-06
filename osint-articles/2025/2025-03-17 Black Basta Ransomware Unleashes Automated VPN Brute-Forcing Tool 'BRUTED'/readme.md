# Black Basta Ransomware Unleashes Automated VPN Brute-Forcing Tool 'BRUTED'

The Black Basta ransomware gang has developed 'BRUTED,' an automated tool for brute-forcing VPNs and firewalls, targeting edge devices for easy network breaches. EclecticIQ warns of its use in large-scale attacks since 2023.

Key takeaways:

🕵️‍♂️ New Tool Uncovered: EclecticIQ revealed Black Basta’s 'BRUTED,' an automated brute-forcing framework that has been targeting edge devices like VPNs and firewalls since 2023, streamlining ransomware attacks.

🔓 How It Works: BRUTED scans subdomains and IPs, extracts SSL certificate data for password guesses, and performs bulk credential-stuffing attacks to exploit weak or reused credentials.

🌍 Global Threat: In 2024, the tool fueled large-scale attacks worldwide, amplifying Black Basta’s reach by targeting exposed corporate network devices with minimal effort.

🛡️ Protect Yourself: Keep devices updated with the latest patches, enforce strong passwords, and use multi-factor authentication to block this automated menace.

🔗 https://buff.ly/Vi2h5px

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `mitre-attack-ttps.txt`: List of MITRE ATT&CK techniques observed.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
