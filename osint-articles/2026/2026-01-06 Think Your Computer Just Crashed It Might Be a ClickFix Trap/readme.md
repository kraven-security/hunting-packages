# Think Your Computer Just Crashed? It Might Be a ClickFix Trap!

A sophisticated new "ClickFix" social engineering campaign is targeting the hospitality sector in Europe by using fake Windows Blue Screen of Death (BSOD) screens to trick users into manually installing malware. Attackers use high-fidelity clones of Booking.com to lure staff into executing malicious PowerShell commands under the guise of "fixing" a system crash.

Key takeaways:

💻 Deceptive Full-Screen Hijacking: The attack triggers browser full-screen mode to display a realistic Windows BSOD, making it nearly indistinguishable from a legitimate system failure.

⌨️ Clipboard Command Manipulation: Victims are instructed to open the Windows "Run" dialog and paste (Ctrl+V) a malicious command that the website has silently copied to their clipboard.

🏨 Exploiting Industry Urgency: Phishing emails impersonating Booking.com reservation cancellations create a high-pressure environment for hospitality staff, increasing the likelihood they will follow "recovery" instructions without hesitation.

⚙️ Multi-Stage Malware Deployment: Executing the command installs the DCRAT remote access trojan, which can log keystrokes, hijack desktops, and even deploy cryptocurrency miners while bypassing Windows Defender.

🛡️ Verify Before You Act: Remember that a real Windows BSOD never provides interactive recovery steps asking you to paste or execute terminal commands—always treat such prompts as a high-risk security threat.

🔗 [Source](https://www.securonix.com/blog/analyzing-phaltblyx-how-fake-bsods-and-trusted-build-tools-are-used-to-construct-a-malware-infection/)

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
