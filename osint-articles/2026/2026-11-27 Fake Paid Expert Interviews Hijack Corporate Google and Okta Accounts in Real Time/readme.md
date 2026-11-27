# Fake Paid Expert Interviews Hijack Corporate Google and Okta Accounts in Real Time

Threat actors are targeting enterprise employees with fake "expert interview" invitations via legitimate platforms like HireVue and SendGrid. Once clicked, a custom React phishing kit connects victims to a live operator over Socket.IO to relay passwords and MFA prompts in real time.

Key takeaways:

**🎯 Target:** Corporate employees and enterprise professionals using work Google Workspace or Okta accounts (the phishing kit explicitly rejects personal Gmail, Yahoo, and Outlook addresses).

**💡 Insight:** Instead of using a traditional reverse proxy like Evilginx, the "GoodGuys" kit (named after hidden accessibility text likely left over from jailbreaking an AI coding assistant) opens a live WebSocket channel allowing a human operator to manually replay stolen credentials against real login portals and push matching SMS, authenticator, or 2-digit number tap prompts directly to the victim's screen.

**☑️ Recommendation 1:** Upgrade high-risk corporate accounts to phishing-resistant MFA, such as FIDO2 hardware security keys or passkeys, which bind authentication to the legitimate domain and cannot be relayed by an operator.

**☑️ Recommendation 2:** Train employees to scrutinize unsolicited paid interview or webinar offers, even when delivered from trusted recruiting or marketing platforms, and avoid entering corporate SSO credentials to "register" for third-party events.

**☑️ Recommendation 3:** Configure identity provider alerts and browser-level telemetry to detect anomalous sign-ins originating from cloud hosting providers (such as Vultr or AWS) immediately following push or SMS MFA approvals.

🔗 [Source](https://pushsecurity.com/blog/goodguys-phishing-campaign-teardown)

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
