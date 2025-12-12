# Malicious VSCode Extensions Hide Rust Trojan in Fake PNG Files

Hackers have been caught distributing 19 malicious extensions on the official Visual Studio Code Marketplace that conceal a Rust-based trojan within a fake image file. These extensions, disguised as themes, execute malicious code automatically upon startup by leveraging modified dependencies to evade detection.

Key takeaways:

🕵️‍♂️ Stealthy Evasion: Attackers bundled a pre-packaged node_modules folder to bypass npm registry checks, hiding malicious code in modified path-is-absolute or @actions/io packages.

🖼️ Fake Image Payload: The attack utilizes a file named banner.png that isn't an image at all—it contains a Rust-based trojan and a "living-off-the-land" binary (cmstp.exe).

📦 Targeted Extensions: 19 specific extensions were identified, including "Malkolm Theme," "PandaExpress Theme," and "Prada 555 Theme," all published as version 1.0.0.

🛡️ Immediate Action: Microsoft has removed the offending extensions, but users who installed them should immediately scan their systems for signs of compromise.

🔗 Supply Chain Risk: This highlights the ongoing danger of supply-chain attacks where trusted platforms like the VSCode Marketplace are used to distribute malware to developers.

🔗 [Source](https://www.reversinglabs.com/blog/malicious-vs-code-fake-image)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `malicious-packages.txt`: List of malicius VSCode packages in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
