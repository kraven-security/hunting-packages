# Massive GitHub Actions Abuse Campaign Targets cPanel & WHM Systems 

A sophisticated cyber campaign is hijacking compromised GitHub repositories to weaponize GitHub Actions as a distributed exploitation infrastructure. Threat actors are utilizing ephemeral runners to exploit an authentication bypass flaw (CVE-2026-41940) in cPanel and WHM, aggressively harvesting high-value server-side credentials.

Key takeaways:

**🎯 Target**: Internet-facing cPanel and WHM systems, hosting customers, and organizations managing cloud infrastructure via these control planes.

**💡 Insight**: The malware was not hidden in the source code (e.g., PHP packages) itself, but deeply nested within GitHub Actions workflow files, stealthily turning GitHub-hosted Ubuntu runners into an automated, disposable attack network for scanning and data exfiltration.

**☑️ Recommendation 1**: System administrators must immediately update cPanel and WHM to the latest patched builds to remediate CVE-2026-41940, and run cPanel's official IOC detection scripts on previously exposed servers.

**☑️ Recommendation 2**: Development teams should rotate any potentially exposed GitHub, AWS, Stripe, and database credentials, and mandate strict manual approvals for any changes made to `.github/workflows` directories.

**☑️ Recommendation 3**: Enforce least-privilege access across all CI/CD pipelines by minimizing `GITHUB_TOKEN` permissions, securing self-hosted runners, and actively monitoring continuous integration egress traffic for anomalous payload downloads. 

🔗 [Source](https://socket.dev/blog/github-actions-abuse-powers-cpanel-and-whm-exploitation)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `maliciuos-packages.txt`: List of malicious pacakges in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
