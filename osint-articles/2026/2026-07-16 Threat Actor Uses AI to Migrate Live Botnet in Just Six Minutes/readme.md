# Threat Actor Uses AI to Migrate Live Botnet in Just Six Minutes  

A Russian-speaking threat actor dubbed "bandcampro" has demonstrated the terrifying new speed of cyberattacks, using Google Gemini CLI to completely migrate and deploy a live command-and-control (C\&C) botnet infrastructure in exactly six minutes. The attacker simply typed plain-text intents in Russian, allowing the AI to handle architecture, coding, deployment, and even complex firewall debugging while doing only 11% of the actual work themselves.

Key takeaways:

**🎯 Target**: The immediate victims observed were eight computers inside a dental clinic (specifically targeting their OpenDental database), though the actor also used AI to compromise WordPress merchants and plan a cryptocurrency fraud scheme targeting elderly people in the US and Canada.

**💡 Insight**: The entire C\&C operation, including server code and deployment instructions, fits into three plain-text files totaling just 5KB. This makes the botnet highly replicable, disposable, and drastically lowers the technical barrier for entry, allowing even non-technical threat actors to rebuild destroyed infrastructure faster than defenders can respond.

**☑️ Recommendation 1**: Since the malicious beaconing relies on a PowerShell script polling every 5 seconds, ensure your endpoint detection and response (EDR) solutions are configured to heavily monitor and restrict unauthorized or unusual outbound PowerShell activity, particularly from temporary directories.

**☑️ Recommendation 2**: Audit systems for suspicious persistence mechanisms, specifically checking for powershell.exe copied as svchost.exe in the %APPDATA%\\Microsoft\\Windows\\Runtime\\ path, and monitor for unauthorized WMI event subscriptions or unauthorized modifications to the HKCU:\\Environment\\UserInitMprLogonScript registry key.

**☑️ Recommendation 3**: Re-evaluate your organization's threat modeling to account for hyper-agile, AI-driven infrastructure deployment. Traditional indicators of compromise (IOCs) are becoming less durable, so focus defense strategies on behavioral analytics and zero-trust architecture rather than static IP or domain blacklists.

🔗 [Source](https://www.trendmicro.com/en_us/research/26/g/actor-behind-patriot-bait-used-ai-to-deploy-c2-botnet.html)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
