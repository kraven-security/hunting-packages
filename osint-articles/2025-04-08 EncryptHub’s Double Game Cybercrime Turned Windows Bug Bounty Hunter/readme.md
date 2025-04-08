# EncryptHub’s Double Game: Cybercrime Turned Windows Bug Bounty Hunter

EncryptHub, tied to 618 breaches, flipped the script by reporting two Windows zero-days to Microsoft—yet weeks later, they exploited another for malware attacks. A conflicted cybercriminal or a cunning opportunist?

Key takeaways:

🕵️‍♂️ Dual Identity: EncryptHub, a notorious hacker linked to 618 org breaches, reported two Windows zero-days (CVE-2025-24061, CVE-2025-24071) to Microsoft in March 2025, earning bug bounty cred.

🦠 Crime Continues: Just weeks later, they exploited CVE-2025-26633 as a zero-day, deploying Rhadamanthys and StealC malware via fake Chinese software, targeting hundreds.

🔍 Unmasked: Outpost24 tied EncryptHub to the SkorikARI alias via OPSEC slips, revealing a figure juggling cybercrime profits and security research kudos.

💻 Malware Arsenal: Their custom toolkit—EncryptHub Stealer, DarkWisp, and SilentPrism backdoors—shows a sophisticated shift from ransomware to data theft.

🔗 https://buff.ly/jjXxxSq

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
