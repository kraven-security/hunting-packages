# AI Website Builder Lovable Abused by Threat Actors

AI website builder 'Lovable' is being actively exploited by malicious actors to create convincing phishing pages, posing a significant threat to unsuspecting users. This tool, designed for ease of use, has become a favorite for scammers due to its lack of security guardrails.

Key takeaways:

🔒 Lovable's AI can be easily manipulated to generate pixel-perfect replicas of legitimate login pages, such as Microsoft's, making them difficult to distinguish from the real thing.

🚨 The platform allows for the automatic deployment of these phishing sites on subdomains, adding a layer of authenticity to the scam.

💡 Unlike other AI models, Lovable has been found to have minimal restrictions against creating malicious content, essentially providing a seamless production line for phishing campaigns.

🛡️ The AI tool enables credential exfiltration to external channels like Firebase without triggering security systems, making it a potent tool for data theft.

🌐 This highlights a concerning trend of generative AI being repurposed for malicious activities, emphasizing the need for robust security protocols in AI-powered tools.

🔗 [Source](https://www.proofpoint.com/us/blog/threat-insight/cybercriminals-abuse-ai-website-creation-app-phishing)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network indicators.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
