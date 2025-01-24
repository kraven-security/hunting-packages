# Hackers Use FastHTTP for High-Speed Microsoft 365 Password Attacks

Hackers are employing the FastHTTP Go library to launch high-speed password spray attacks against Microsoft 365, evading rate limits through concurrent requests. This method has achieved a success rate of 9.7% in targeting enterprise accounts.

Key takeaways:

🏃‍♂️ Speed Advantage: The use of FastHTTP allows for rapid password attempts, bypassing traditional rate-limiting defenses.

🔒 Password Spray: Attackers use this technique to try common passwords across a large number of accounts, increasing the likelihood of success.

📈 Success Rate: With a 9.7% success rate, the attack has proven effective against Microsoft 365 enterprise accounts.

🌐 Global Impact: This attack vector is seen targeting Microsoft 365 users worldwide, highlighting the need for enhanced security measures.

🛡️ Security Recommendations: Microsoft 365 administrators are urged to implement multi-factor authentication (MFA) and monitor for unusual login activity.

🔗 https://buff.ly/4jePfH0 

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `ips.txt`: List of IP addresses in the article.
- `asns.txt`: List of ASN providered in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
