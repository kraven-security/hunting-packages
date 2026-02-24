# Operation MacroMaze Strikes Europe with "Living-Off-The-Browser" Tactic

Russian state-sponsored actor APT28 (Fancy Bear) has been identified in a sophisticated new campaign targeting Western and Central European entities by weaponizing legitimate webhook services and headless browser sessions. This operation, active through early 2026, demonstrates how threat actors are pivoting to "simple" tools like VBScript and Batch files to achieve high-impact stealth and bypass traditional defenses.

Key takeaways

🌐 Legitimate Service Abuse: The attackers leveraged webhook.site for both initial beaconing, using embedded "tracking pixels" in Word documents, and final data exfiltration, masking malicious traffic as benign web activity.

🚨 Advanced Browser Evasion: The malware executes Base64-encoded HTML payloads by launching Microsoft Edge in "headless" mode or moving the browser window off-screen, allowing it to exfiltrate data without any visible user interaction.

🛡️ Macro Evolution: Analysts observed a shift toward using keyboard simulations (SendKeys) in newer variants, a tactical evolution designed specifically to bypass modern security prompts and automated sandboxes.

🔒 The Power of Simplicity: By cleaning up disk artifacts and outsourcing C2 infrastructure to trusted public platforms, APT28 proves that meticulous orchestration of basic scripts can be more effective than complex, custom malware.

🔗 [Source](https://lab52.io/blog/operation-macromaze-new-apt28-campaign-using-basic-tooling-and-legit-infrastructure/)

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
