# Exposing AnonyMousKIT: The AI-Powered Phishing Supply Chain Targeting Apple Devices 

SOCRadar has uncovered AnonyMousKIT, an advanced Phishing-as-a-Service (PhaaS) ecosystem designed to steal Apple IDs and disable Activation Locks on stolen devices. Operating as a credit-metered platform, it automates highly convincing social engineering attacks using conversational AI and multi-channel persistence.

Key takeaways:

🎯 **Target:** Owners of stolen Apple devices, with the ultimate goal of harvesting Apple IDs, passcodes, and 2FA codes to unlock and monetize the stolen hardware.

💡 **Insight:** The platform relies on a highly deceptive multi-channel pipeline (Email, SMS, WhatsApp) and deploys conversational AI voice agents posing as "Alice from Apple Support" to dynamically insert victim details into automated vishing calls.

☑️ **Recommendation 1:** If your device is stolen, maintain extreme vigilance against unsolicited communications claiming to be from "Apple Support." Apple will never contact you directly to help unlock a found device.

☑️ **Recommendation 2:** Organizations should enforce strict Mobile Device Management (MDM) policies and transition to FIDO2 hardware security keys for Apple ID authentication to protect corporate iCloud backups and Keychain credentials from being compromised.

🔗 [Source](https://socradar.io/blog/anonymouskit-ai-phaas-supply-chain/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `threat-actor-emails.txt`: List of email addresses used by the threat actor in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
