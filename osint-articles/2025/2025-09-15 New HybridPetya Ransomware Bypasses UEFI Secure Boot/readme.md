# New HybridPetya Ransomware Bypasses UEFI Secure Boot

A new and dangerous strain of ransomware, named "HybridPetya," has emerged with the ability to bypass the UEFI Secure Boot feature, a critical security measure designed to protect the boot process. This malware, which mimics the destructive Petya and NotPetya wipers, poses a significant threat to modern systems.

Key takeaways:

🔒 Secure Boot Bypass: HybridPetya exploits a vulnerability in a legitimate, Microsoft-signed application to install a malicious bootkit, even when Secure Boot is enabled.

💻 Destructive Encryption: The ransomware encrypts the Master File Table (MFT) of the hard drive, rendering the system unusable, and then displays a ransom note demanding payment in Bitcoin.

🛡️ Patch is Available: Microsoft has already released a patch for the vulnerability exploited by HybridPetya. Applying the latest security updates is crucial for protection.

💡 Early Stages: While not yet seen in the wild, this malware could be a proof-of-concept for a more dangerous threat. Organizations should ensure their systems are patched and maintain regular offline backups.

🔗 [Source](https://www.welivesecurity.com/en/eset-research/introducing-hybridpetya-petya-notpetya-copycat-uefi-secure-boot-bypass/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
