# WordlistLoader: A New Threat Delivering Amatera Stealer via Fake CAPTCHAs

Gen Threat Labs has uncovered WordlistLoader, a new malware loader distributing the Amatera infostealer through widespread ClearFake campaigns. Attackers are injecting malicious JavaScript into legitimate websites to serve fake CAPTCHA overlays, tricking users into manually executing malicious shellcode on their machines.

Key takeaways:

**🎯 Target**: The primary victims are general users and visitors to compromised, legitimate websites who are lured into infecting their systems through deceptive social engineering tactics (FakeCaptchas).

**💡 Insight**: To evade detection, WordlistLoader innovatively reconstructs its malicious shellcode from a sequence of plain English words, where each word translates to exactly one byte. It also incorporates advanced defense evasion, including unhooking loaded modules and bypassing Event Tracing for Windows (ETW) using hardware breakpoints.

**☑️ Recommendation 1**: Implement robust clipboard protection and endpoint behavioral monitoring to proactively block suspicious `conhost` or `cmd` commands originating from web browsers.

**☑️ Recommendation 2**: Monitor endpoint activity for the specific execution pattern of this campaign. Threat hunters should flag events where `conhost` launches a hidden `cmd` process, maps a remote WebDAV share using `pushd`, and executes a DLL via `rundll32`.

**☑️ Recommendation 3**: Conduct regular security awareness training to educate employees about "ClickFix" tactics. Emphasize that a legitimate website verification will *never* ask a user to copy and paste commands into the Windows Run dialog.

🔗 [Source](https://www.gendigital.com/blog/insights/research/wordlistloader-delivering-amatera-via-clearfake-campaigns)

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
