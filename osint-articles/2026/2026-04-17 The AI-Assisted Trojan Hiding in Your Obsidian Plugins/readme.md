# The AI-Assisted Trojan Hiding in Your Obsidian Plugins

Attackers are weaponizing Obsidian plugins to distribute PHANTOMPULSE, an AI-generated Trojan bypassing security perimeters. By exploiting "Shell Commands" and social engineering, they gain remote control over Windows and macOS systems.

Key takeaways

🎯 Target: High-value professionals in the financial and cryptocurrency sectors, typically reached via targeted social engineering on platforms like LinkedIn and Telegram.

💡 Insight: The campaign poses a double threat: it uses AI to generate evasive code and abuses legitimate "living-off-the-app" techniques by hiding malicious logic within trusted Obsidian configuration files (data.json).

☑️ Recommendation 1: (Immediate) Disable "Community Plugins" and avoid opening or syncing vaults from untrusted sources, as malicious settings can execute automatically upon opening a vault.

☑️ Recommendation 2: (Strategic) Security teams should implement EDR telemetry to monitor for anomalous child processes (e.g., PowerShell or AppleScript) originating from Electron-based productivity applications like Obsidian.

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
