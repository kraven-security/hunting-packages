# Don’t Get Fooled by the New “Browser-in-the-Browser” Phishing Trick

Cybercriminals are now deploying a sophisticated "Browser-in-the-Browser" (BitB) technique to create fake Facebook login windows that appear identical to legitimate OAuth pop-ups, complete with forged address bars. This advanced social engineering tactic is designed to steal credentials by exploiting your trust in standard login prompts on third-party websites.

Key takeaways:

🖥️ Simulated Windows: Attackers use HTML and JavaScript to render a fake browser window inside the web page you are currently visiting, mimicking the look and feel of a real Chrome, Edge, or Firefox pop-up.

🌐 Forged URL Bars: Unlike traditional phishing, this method displays a perfectly replicated address bar showing the correct domain and a "https" padlock, bypassing the common security advice to "check the URL."

💡 The "Drag Test": A simple way to detect this is to try and drag the login pop-up window outside the bounds of your main browser window. If the pop-up gets cut off at the edge or stays stuck inside the page, it is a fake element.

🔒 Technical Defenses: Always utilize a reputable password manager, as these tools will fail to recognize and autofill credentials into a simulated BitB window, and ensure Multi-Factor Authentication (MFA) is active on all accounts.

🔗 [Source](https://www.trellix.com/en-au/blogs/research/the-unfriending-truth-how-to-spot-a-facebook-phishing-scam/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
