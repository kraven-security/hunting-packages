# Akira Ransomware Bypassing MFA on SonicWall VPNs

The Akira ransomware group is actively exploiting a vulnerability in SonicWall SSL VPNs, and they're now able to bypass multi-factor authentication. This campaign poses a significant threat, as it allows attackers to gain access to networks even when MFA is enabled.

Key takeaways:

🔒 MFA Bypass: The attackers have found a way to circumvent MFA, likely by using previously stolen OTP seeds, although the exact method is still under investigation.

🛡️ Ongoing Attacks: Even after patching, attackers are still successfully compromising networks using stolen credentials, highlighting the need for a multi-layered defense.

💡 Rapid Infiltration: Once inside a network, the Akira group moves extremely quickly, often beginning their internal reconnaissance within five minutes.

🌐 Credential Reset is Crucial: It is imperative that all VPN credentials on any SonicWall device that has used vulnerable firmware in the past be reset immediately.

🔗 [Source](https://arcticwolf.com/resources/blog/smash-and-grab-aggressive-akira-campaign-targets-sonicwall-vpns/)

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
