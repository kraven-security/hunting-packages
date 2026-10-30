# ‘Yoba’ Campaign Weaponizes Fake ChatGPT & Claude Apps via DLL Sideloading

Check Point Research uncovered "Yoba," a sophisticated malware campaign that distributes fake desktop apps for popular AI models like ChatGPT and Claude. Attackers are using SEO poisoning to send victims to malicious GitHub pages, where they abuse legitimate, digitally signed executables from OpenAI and Anthropic to stealthily run malware via DLL sideloading.

Key takeaways:

**🎯 Target:** Users and developers actively searching for desktop applications of advanced AI tools (specifically lured by fake, non-existent versions like "GPT-5.6 Sol," "GPT-6 Astra," and "Claude Opus").

**💡 Insight:** The threat actors demonstrate highly advanced operational security (OPSEC) by avoiding traditional command-and-control (C2) servers; instead, they blend their malicious traffic using Telegram, Tor, Catbox, and DNS over HTTPS (DoH) while using trusted, signed AI binaries to bypass antivirus sandbox environments.

**☑️ Recommendation 1:** Train your workforce to download AI applications only from official vendor websites (e.g., OpenAI, Anthropic) and avoid third-party repositories, unofficial GitHub projects, and unverified search results.

**☑️ Recommendation 2:** Configure your Endpoint Detection and Response (EDR) solutions to monitor for abnormal behavioral patterns, specifically unexpected network connections, child processes, or dropped files originating from seemingly legitimate signed binaries like `Setup.exe`.

**☑️ Recommendation 3:** As a long-term defense, monitor and restrict unauthorized outbound connections from enterprise endpoints to Tor nodes, the Telegram API, and anonymous file-sharing domains like Catbox, which can effectively disrupt the YobaLoader's infection chain.

🔗 [Source](https://research.checkpoint.com/2026/tricks-from-the-past-deployed-via-signed-chatgpt-and-claude-binaries/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara-rules.yar`: List of YARA detection rules in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
