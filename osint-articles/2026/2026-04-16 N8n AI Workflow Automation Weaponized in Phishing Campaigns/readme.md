# N8n AI Workflow Automation Weaponized in Phishing Campaigns

Cisco Talos reports a 686% surge in phishing exploiting AI platforms like n8n. Attackers use trusted cloud infrastructure to deliver RATs and conduct device fingerprinting via malicious workflows.

Key takeaways

🎯 Target: Organizations and individual users who interact with "trusted" cloud subdomains (e.g., *.app.n8n.cloud), particularly those targeted via spoofed Microsoft OneDrive notifications.

💡 Insight: Attackers use n8n webhooks to serve dynamic, malicious HTML payloads; because the browser sees the data coming from a trusted n8n domain, it often bypasses reputation-based security blocks that would normally flag external malware, hosts.

☑️ Recommendation 1: (Immediate Visibility Audit) Configure security alerts for any internal traffic directed toward n8n.cloud or similar low-code subdomains that are not part of your organization's authorized tech stack.

☑️ Recommendation 2: (Behavioral Detection) Shift defense strategies from simple domain blocking to behavioral analysis that triggers alerts when high volumes of data or unauthorized file types (like .exe or .msi) are pulled from automation platforms.

☑️ Recommendation 3: (Secure Email Defense) Deploy AI-driven email security solutions that utilize Natural Language Processing (NLP) to detect the subtle linguistic patterns of "agentic" phishing rather than relying solely on static blacklists.

🔗 [Source](https://blog.talosintelligence.com/the-n8n-n8mare/)

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
