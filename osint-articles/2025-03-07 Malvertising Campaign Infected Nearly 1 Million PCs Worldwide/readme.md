# Malvertising Campaign Infected Nearly 1 Million PCs Worldwide

Microsoft shut down a massive malvertising campaign that hit nearly 1 million PCs. The campaign used GitHub repos to spread malware via streaming site ads. The Storm-0408 gang’s multi-stage attack stole data and dropped extra payloads—stay safe, skip sketchy video links!

Key takeaways:

🕵️‍♂️ Global Reach: Microsoft dismantled a malvertising scheme impacting almost 1 million devices worldwide, traced to GitHub repositories pushing malware, reported on March 6, 2025.

📺 Ad Trap: Embedded in streaming site videos, the campaign redirected users to malicious GitHub repos via pay-per-view/pay-per-click ads, tracked as Storm-0408 by Microsoft Threat Intelligence.

💻 Malware Payload: It harvested system info (memory, graphics, OS details) and deployed stage-two payloads, blending phishing and SEO tricks to maximize infection rates.

🔒 Takedown Win: Microsoft axed the GitHub repos, curbing the attack that exploited legit platforms to dodge detection—details on the full attack chain are now public.

🛡️ User Tip: Avoid dodgy streaming links and update your defenses to block this crafty malvertising threat!

🔗 https://buff.ly/Jm8EVWb

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `microsoft-hunting-queries`: List of Microsoft XDR threat hunting queries in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
