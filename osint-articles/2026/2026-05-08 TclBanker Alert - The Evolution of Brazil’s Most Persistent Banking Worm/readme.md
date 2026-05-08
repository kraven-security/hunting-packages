# TclBanker Alert: The Evolution of Brazil’s Most Persistent Banking Worm

Elastic Security Labs has identified TclBanker, an advanced evolution of the Maverick malware family. This threat uses anti-analysis and worm capabilities to hijack WhatsApp and Outlook, spreading the infection via victims' own communication channels.

Key takeaways:

🎯 **Target**: Brazilian financial institutions, fintechs, and cryptocurrency users, specifically targeting 59 unique domains through a specialized browser monitoring framework.

💡 **Insight**: TclBanker stands out for its "operator-driven" social engineering; it uses a high-fidelity WPF overlay framework to display fake full-screen Windows Update or "Please Wait" screens, effectively locking users out of their machines while an attacker manually intercepts MFA tokens and banking codes in the background.

☑️ **Recommendation 1**: **Immediate Technical Guardrails**: Update EDR policies to detect "Double DLL Loading" and unauthorized memory unhooking of `ntdll.dll`, as TclBanker relies on these evasion techniques to bypass Windows ETW and AMSI telemetry.

☑️ **Recommendation 2**: **Communication Protocol Audit**: Advise employees to treat unexpected ZIP or MSI files received via WhatsApp Web or Outlook with extreme caution, even when they come from known contacts, as the malware's self-propagation modules specifically target these platforms to exploit existing trust.

☑️ **Recommendation 3**: **Social Engineering Defense**: Implement "Out-of-Band" verification for high-value transactions; if a user's screen unexpectedly "locks" with a system-style message while they are performing a bank transfer, they should immediately disconnect from the network and report it to IT. 

🔗 [Source](https://www.elastic.co/security-labs/tclbanker-brazilian-banking-trojan)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara-rules.yar`: List YARA rules to detect the threat in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
