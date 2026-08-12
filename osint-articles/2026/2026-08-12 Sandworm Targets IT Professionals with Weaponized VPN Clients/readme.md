# Sandworm Targets IT Professionals with Weaponized VPN Clients  

Russian state-sponsored group Sandworm (UAC-0145 / APT44) is posing as tech employers on recruitment platforms to conduct fake job interviews. Attackers trick IT candidates into installing trojanized VPN software disguised as assessment tools, resulting in full device compromise.

Key takeaways:

**🎯 Target**: System administrators, IT specialists, and technology jobseekers actively maintaining public profiles on recruitment platforms and job boards.

**💡 Insight**: Threat actors build high trust through multi-channel interaction, conducting video interviews on Zoom and Telegram, before sending spoofed follow-up emails instructing candidates to install custom VPN software for a "technical assessment".

**☑️ Recommendation 1**: Independently validate interview invitations and recruiter identities through official corporate websites or verified HR channels before engaging in video calls or downloading materials.

**☑️ Recommendation 2**: Run any software, scripts, or VPN configurations required during job interviews inside an isolated sandbox environment or dedicated virtual machine to prevent endpoint infection.

**☑️ Recommendation 3**: Restrict administrative installation privileges on company and BYOD devices used by IT personnel, maintaining strict application whitelisting to block untrusted VPN binaries and unauthorized network tunnels.

🔗 [Source](https://cert.gov.ua/article/6318863)

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
