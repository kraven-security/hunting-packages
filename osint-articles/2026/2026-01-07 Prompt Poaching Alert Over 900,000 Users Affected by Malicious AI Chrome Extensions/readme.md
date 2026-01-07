# "Prompt Poaching" Alert: Over 900,000 Users Affected by Malicious AI Chrome Extensions

Cybersecurity researchers have uncovered two malicious Chrome extensions—"Chat GPT for Chrome" and "AI Sidebar"—that are actively exfiltrating private ChatGPT and DeepSeek conversations alongside full browsing histories. These rogue tools impersonate legitimate AI assistants to trick users into granting broad data permissions under the guise of providing "anonymous analytics."

Key takeaways

🚨 Targeted AI Data Theft: This campaign, codenamed "Prompt Poaching," specifically harvests entire AI chatbot sessions, potentially exposing sensitive corporate intellectual property, customer data, and personal secrets.

🎭 Deceptive Tactics: The extensions impersonate popular tools and even leveraged Chrome’s "Featured" badge status to build false trust while silently sending harvested data to a C2 server every 30 minutes.

🌐 Massive Scale: With over 900,000 collective installations, the reach of this data exfiltration is vast, representing a significant breach of privacy for both individual users and organizations.

🛡️ Immediate Action Required: Check your browser for extensions named "Chat GPT for Chrome with GPT-5" or "AI Sidebar" and remove them immediately to stop active data exfiltration.

🔒 Enterprise Risk: This incident highlights the need for strict browser extension policies; one "anonymous" click can bypass traditional security layers and leak your most sensitive AI-driven workflows.

🔗 [Source](https://www.ox.security/blog/malicious-chrome-extensions-steal-chatgpt-deepseek-conversations/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-extension-ids.txt`: List of malicious browser extension IDs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
