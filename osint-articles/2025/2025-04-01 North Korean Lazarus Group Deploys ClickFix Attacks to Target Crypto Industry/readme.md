🗞️ North Korean Lazarus Group Deploys ClickFix Attacks to Target Crypto Industry

North Korea’s Lazarus hackers are using ClickFix tactics, posing as crypto giants like Coinbase and Kraken, to trick job seekers into installing malware via fake error fixes. After stealing $1.5B from Bybit, this escalating threat demands vigilance—don’t run unknown commands!

Key takeaways:

🕵️‍♂️ Lazarus Evolves: The North Korean Lazarus group has adopted ClickFix attacks since Feb 2025, impersonating crypto firms like Coinbase, KuCoin, and Kraken to target job seekers in the crypto space.

📜 ClickFix Deception: Victims are lured with fake errors on job docs or sites, prompting them to run malicious PowerShell commands that deploy malware for system control.

💰 Massive Heists: Linked to the record-breaking $1.5B Bybit theft, Lazarus uses these tactics to steal crypto assets, blending them with their ongoing "Contagious Interview" campaign.

🔍 Dual Approach: Sekoia notes that Lazarus runs ClickFix alongside traditional methods, testing effectiveness while hitting centralized finance (CeFi) targets hard.

🔗 https://buff.ly/nRFD91a

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article.
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara-rules.yar`: List of YARA rules to detect the threat.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
