# Hackers Use 1-Pixel SVG "Magic" to Steal Credit Cards

A stealthy new MageCart campaign is targeting nearly 100 e-commerce stores by hiding malicious code inside a tiny, 1x1-pixel SVG image. By exploiting the unpatched "PolyShell" vulnerability in Magento, attackers are bypassing traditional security scanners to deploy highly convincing fake checkout overlays.

Key takeaways

🕵️‍♂️ The 1-Pixel Trap: Attackers inject a microscopic 1x1-pixel SVG element into a website's HTML. This element uses an onload handler to execute a Base64-encoded skimmer payload, completely avoiding the external script references that most security tools monitor.

🎭 Convincing Overlays: When a customer clicks "Checkout," the malware intercepts the action and displays a fake "Secure Checkout" form. This form even performs real-time validation (Luhn check) to ensure the stolen card data is valid before exfiltrating it.

🔓 Exploiting PolyShell: The campaign leverages the "PolyShell" flaw, which affects all Magento Open Source and Adobe Commerce stable version 2 installations, enabling unauthenticated code execution and full account takeover.

🛡️ Actionable Defense: Site admins should audit their HTML for hidden SVG tags containing onload and atob() attributes. Additionally, check for the _mgx_cv key in browser localStorage—a clear indicator that payment data may have been compromised.

🔗 [Source](https://sansec.io/research/svg-onload-magecart-skimmer)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
