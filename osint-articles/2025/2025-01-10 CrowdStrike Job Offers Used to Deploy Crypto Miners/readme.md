# CrowdStrike Job Offers Used to Deploy Crypto Miners

Phishing emails pretending to be from CrowdStrike are targeting developers with fake job offers to install a Monero crypto miner named XMRig. The campaign uses a fake CrowdStrike CRM application to trick victims into downloading the malicious software.

Key takeaways:

📧 Phishing Campaign: Emails impersonating CrowdStrike offer fake developer jobs to distribute XMRig, a Monero cryptocurrency miner.

💼 Fake Job Offers: The emails thank the recipient for applying to a developer position at CrowdStrike, leading them to download a supposed "employee CRM application."

🕵️‍♂️ Malware Delivery: The downloaded application is actually a dropper for the XMRig miner, infecting the systems of those who install it.

🚫 CrowdStrike Warning: CrowdStrike has issued a warning to developers about this scam, noting the use of their branding in phishing emails.

🔍 Indicators of Compromise: Details of the campaign, including the malicious URLs and file names, are provided for detection and prevention.

🔗 https://buff.ly/4ja2jgI

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
