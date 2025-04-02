# QR Code Phishing Surge: Attackers Innovate with Redirects and Turnstile Evasion

QR code phishing is spiking across the US and Europe, with attackers hiding links via redirects and using Cloudflare Turnstile to dodge security scans, per Unit 42’s latest findings. Industries like healthcare and finance are prime targets—train staff and scan smart!

Key takeaways:

📲 QR Code Evolution: Since late 2024, Unit 42 has tracked a rise in "quishing"—phishing via QR codes—using redirects through legit sites to mask malicious destinations.

🛡️ Evasion Upgrade: Attackers deploy Cloudflare Turnstile for user verification, bypassing security crawlers and luring victims to fake login pages with tailored credential theft.

🌍 Widespread Hits: The campaign spans the US and Europe, targeting the medical, automotive, education, energy, and financial sectors with spoofed e-sign documents (e.g., DocuSign, Adobe Acrobat Sign).

🔍 Stealthy Delivery: QR codes in phishing emails or PDFs push users to scan with personal devices, which are often less secure, amplifying the risks of credential exposure.

🔗 https://buff.ly/6nFspqx

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
