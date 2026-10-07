# Fake AI Ad Portals Deploy Browser-in-the-Browser Attacks to Hijack Corporate Ad Accounts 

Researchers at Island discovered a phishing platform impersonating AI ad suites (Gemini, Claude, ChatGPT, Meta Muse) to hijack corporate ad accounts using Browser-in-the-Browser modals and live MFA relay.

Key takeaways:

**🎯 Target**: Digital marketing agencies, media buyers, and administrative managers overseeing Google Ads Manager (MCC), Meta Business Manager, and corporate cloud identities (Google Workspace, Okta).

**💡 Insight**: Instead of simple credential-harvest forms, the toolkit renders a fake browser window within the DOM, complete with a spoofed address bar, and routes victim interactions to live operators who dynamically trigger, evaluate, and relay MFA prompts (push approvals, OTPs, tap numbers).

**☑️ Recommendation 1**: Train marketing and administrative teams to conduct a "window freedom check"—genuine OAuth popups can be dragged outside the main browser window frame, whereas BitB popups are trapped inside the page viewport.

**☑️ Recommendation 2**: Enforce phishing-resistant MFA (such as FIDO2 passkeys or hardware security keys), which cryptographically bind authentication requests to the true browser origin domain and block BitB credential relay.

**☑️ Recommendation 3**: Regularly audit administrative hierarchies, connected partner accounts, and user access permissions in Google Ads MCC and Meta Business Manager to detect unauthorized manager additions or modified payout methods.

🔗 [Source](https://www.island.io/blog/behind-the-connect-button-the-fake-ai-ads-campaign)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
