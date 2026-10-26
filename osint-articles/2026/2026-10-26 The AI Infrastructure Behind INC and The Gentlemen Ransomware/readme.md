# The AI Infrastructure Behind INC and The Gentlemen Ransomware 

The SOCRadar Threat Research Unit has discovered an AI-driven intrusion ecosystem operated by affiliates of INC Ransomware and The Gentlemen Ransomware groups. Researchers uncovered a publicly accessible command-and-control server that revealed the operators' AI session databases, their central knowledge base, and the source code for a new "Autonomous Red Team Kill Chain Framework" called Phantom.

Key takeaways:

**🎯 Target**: Organizations with edge and remote-access systems are the primary targets of this AI-driven intrusion ecosystem.

**💡 Insight**: This discovery highlights a significant shift in ransomware operations, showcasing how affiliates are leveraging advanced, autonomous AI frameworks like "Phantom" to automate and scale their attacks.

**☑️ Recommendation 1**: Immediately monitor and restrict access to edge and remote-access systems to prevent exploitation by these automated frameworks.

**☑️ Recommendation 2**: Review logs for any indicators of compromise related to INC and The Gentlemen Ransomware infrastructure to ensure your network hasn't been breached.

**☑️ Recommendation 3**: Implement advanced threat intelligence solutions, such as those offered by SOCRadar, to continuously track adversary-controlled servers and stay ahead of evolving AI-driven threats. 

🔗 [Source](https://socradar.io/blog/inc-gentlemen-ransomware-ai-infrastructure/)

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
