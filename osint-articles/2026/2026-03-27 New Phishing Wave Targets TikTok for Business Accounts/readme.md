# New Coruna iOS Exploit Kit Reuses 2023 Flaws to Target iPhones

Security researchers have uncovered a sophisticated mobile threat dubbed the "Coruna" exploit kit that reuses vulnerabilities first identified in 2023 to infiltrate iOS devices. This discovery highlights a growing trend where threat actors weaponize older, known flaws to bypass modern security standards.

Key takeaways:

🔄 Exploit Recycling: The Coruna kit demonstrates that "N-day" vulnerabilities remain highly effective when repackaged into new, stealthy delivery frameworks, proving that threat actors can find value in older code.

🕵️‍♂️ Targeted Espionage: Engineered for high-precision surveillance, this toolset uses advanced obfuscation to bypass standard mobile monitoring and exfiltrate sensitive user data.

🛡️ Strategic Pressure: The persistence of these kits emphasizes that simply releasing a patch is not enough; rapid adoption of updates is critical to closing the window of opportunity for attackers.

🔒 Proactive Defense: High-risk individuals and organizations should activate iOS Lockdown Mode and enforce strict mobile device management (MDM) policies to mitigate these sophisticated attack chains.

🔗 [Source](https://securelist.com/coruna-framework-updated-operation-triangulation-exploit/119228/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
