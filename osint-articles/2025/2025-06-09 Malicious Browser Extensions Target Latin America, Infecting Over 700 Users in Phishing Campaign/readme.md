🗞️ Malicious Browser Extensions Target Latin America, Infecting Over 700 Users in Phishing Campaign

A phishing campaign in Latin America has infected 722 users with malicious Chrome, Edge, and Brave extensions, stealing bank login data since early 2025. Compromised company servers significantly enhanced the attack’s success, affecting 70 firms across multiple countries.

Key takeaways:

🕵️ Phishing-Driven Attack: Since early 2025, a campaign named Operation Phantom Enigma has targeted Brazilian users, utilizing phishing emails originating from compromised company servers to distribute malicious extensions for Chromium-based browsers (Chrome, Edge, Brave), thereby stealing authentication data.

📊 Infection Scale: The malicious extension was downloaded 722 times across Brazil, Colombia, Czech Republic, Mexico, Russia, Vietnam, and other countries, affecting 70 unique victim companies, primarily in the financial sector.

🦠 Malware Delivery: Attackers deployed the extension alongside Mesh Agent and PDQ Connect Agent, enabling unauthorized access and data exfiltration through phishing emails that exploited trust in compromised corporate infrastructure.

🌍 Regional Focus: The campaign heavily targeted Latin America, with Brazil as the epicenter, leveraging social engineering to trick users into installing malicious add-ons, highlighting vulnerabilities in regional cyber security.

🛡️ Mitigation Urged: Users are advised to verify extension sources, audit installed add-ons, and enhance email security to detect phishing attempts. Organizations should also monitor for unauthorized remote access tools.

🔗 https://buff.ly/5SBPOLn

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `malicious-extensions.txt`: List of malicious braowser extensions in the article.
- `mitre-ttps.txt`: MITRE ATT&CK tactics, techniques, and procedures in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
