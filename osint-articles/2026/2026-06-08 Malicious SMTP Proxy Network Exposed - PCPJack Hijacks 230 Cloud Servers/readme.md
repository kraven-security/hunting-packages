# Malicious SMTP Proxy Network Exposed: PCPJack Hijacks 230 Cloud Servers 

The PCPJack campaign hijacked over 230 cloud Linux servers (AWS, GCP, Azure) to build a hidden SMTP relay network. Using Silver C2 and Chisel tools, attackers converted compromised web applications into proxies to facilitate global smishing and phishing.

Key takeaways

**🎯 Target**: Cloud-hosted Linux environments running public-facing web applications across AWS, GCP, and Azure infrastructures globally, predominantly impacting small-to-medium businesses.

**💡 Insight**: The threat actors utilized an automated deployment pipeline featuring a distinct "SMTP quality gate" that actively screens infected servers for outbound communication via port 587\. Furthermore, by utilizing unmodified stock Chisel binaries dropped as hidden files in `/var/tmp/.xs`, the campaign successfully bypassed hash-based antivirus detections and avoided native security controls.

**☑️ Recommendation 1**: Audit all active cloud Linux instances immediately for known indicators of compromise, specifically looking for unauthorized cron jobs or systemd services named `xsync` and unexpected binary executions running out of `/var/tmp/` or `/tmp/`.

**☑️ Recommendation 2**: Implement strict egress filtering rules to completely block unexpected outbound traffic over port 587 (SMTP) and cut off communication to known malicious command-and-control infrastructure like `213.136.80[.]73`.

**☑️ Recommendation 3**: Enhance long-term application security by establishing rigorous vulnerability management schedules for public-facing frameworks to close the web application exploitation vectors initially targeted by the operators. 

🔗 [Source](https://hunt.io/blog/pcpjack-230-cloud-servers-smtp-proxy-network-sliver-chisel)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
