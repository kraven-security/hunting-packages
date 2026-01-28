# The 2-Year-Old WinRAR Bug That Still Grants Access to Hackers

Despite a critical patch being released in August 2023, cybercriminals and state-sponsored threat actors continue to successfully exploit a major path traversal vulnerability (CVE-2023-38831) in WinRAR. This persistent threat highlights a massive global failure in patch management, as attackers use "zombie" vulnerabilities to breach even modern networks.

Key takeaways

🚨 Global Exploitation: High-profile hacking groups like Sandworm and APT40 are actively using this flaw to target government, finance, and energy sectors worldwide.

🕵️ Deceptive Execution: Attackers craft malicious ZIP archives that appear to contain harmless PDFs or images, but trigger hidden code execution the moment a user attempts to open the file.

🛡️ Critical Update Needed: If your organization is running any version of WinRAR older than 6.23, you are currently exposed to remote code execution. Update to the latest version (7.01+) immediately.

💡 Legacy Risk: This campaign proves that hackers don't always need "new" bugs; they simply wait for users to ignore "old" updates for utility software that often flies under the radar of IT audits.

🔒 Validate Your Stack: Treat every desktop utility, from file archivers to PDF readers, as a potential entry point. If it hasn't been updated in six months, it's a liability.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/exploiting-critical-winrar-vulnerability)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoints IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
