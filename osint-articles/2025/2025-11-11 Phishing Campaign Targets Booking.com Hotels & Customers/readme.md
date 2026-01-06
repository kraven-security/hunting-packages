# Phishing Campaign Targets Booking.com Hotels & Customers

A sophisticated phishing campaign is compromising hotel Booking.com accounts, using their official messaging systems to send fake payment demands to customers. This highly convincing scam leverages stolen reservation data to steal guest credit card details.

Key takeaways:

🏨 The attack starts by targeting hotels with phishing emails using a "ClickFix" social engineering tactic, which ultimately installs the PureRAT malware to steal credentials.

✉️ Attackers then pivot, using the compromised hotel's legitimate Booking.com portal to send fraudulent messages to guests with upcoming reservations.

💳 The scam (dubbed "I Paid Twice") falsely claims a payment issue exists and directs the guest to a fake payment page to "re-verify" their card, harvesting their financial data.

🛡️ Hotels must train staff to spot advanced phishing and secure portals with 2FA. The initial compromise is often an infostealer or RAT from a malicious email.

🔍 Always be suspicious of payment requests, even if they come through an official app. Never enter payment details from a link in a message; log in to the main website directly to verify your reservation status.


🔗 [Source](https://blog.sekoia.io/phishing-campaigns-i-paid-twice-targeting-booking-com-hotels-and-customers/)

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
