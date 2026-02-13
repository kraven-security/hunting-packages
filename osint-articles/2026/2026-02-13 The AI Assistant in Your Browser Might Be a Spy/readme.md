# The "AI Assistant" in Your Browser Might Be a Spy

A massive malicious campaign dubbed "AiFrame" has successfully tricked over 300,000 users into installing 30 different Chrome extensions masquerading as legitimate AI tools. These extensions, with names like "Gemini AI Sidebar" and "ChatGPT Translate," are designed to exfiltrate your sensitive credentials, private emails, and even voice transcripts directly to attacker-controlled servers.

Key takeaways

🛑 Gmail Data Theft: 15 of these extensions specifically target Gmail, injecting scripts to read your email threads and even capture text from unsent drafts in real-time.

🕵️ Stealthy Logic Updates: By using full-screen iframes to load remote content, the attackers can change the extension's behavior instantly without needing to pass a new security review by the Chrome Web Store.

🚨 Audio Surveillance: Beyond text, these malicious add-ons leverage the Web Speech API to trigger voice recognition and siphon conversations from your local environment.

🛡️ Critical Cleanup: If you have recently installed any "AI Sidebar" or "GPT" themed extensions, audit your browser immediately, remove suspicious tools, and perform a full password reset for your primary accounts.

🔗 [Source](https://layerxsecurity.com/blog/aiframe-fake-ai-assistant-extensions-targeting-260000-chrome-users-via-injected-iframes/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `threat-actor-emails.txt`: List of email accounts used by threat actor in the article.
- `malicious-extension-ids.txt`: List of malicious browser extensions IDs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
