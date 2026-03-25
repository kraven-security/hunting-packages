# Hackers are Using AI-Powered Resumes to Infiltrate Networks

A sophisticated new cyber campaign is targeting HR departments and recruiters by using AI-generated resumes and deepfake personas to deploy malware. These attackers are moving beyond simple phishing, conducting full "interviews" using forged video and audio to trick staff into downloading malicious payloads.

Key takeaways:

🤖 AI-Enhanced Deception: Threat actors are using generative AI to create highly convincing digital footprints, including professional LinkedIn profiles and GitHub repositories, to appear as legitimate job seekers.

🎥 Deepfake Interviews: In an alarming escalation, attackers are using real-time deepfake technology to bypass video interviews and impersonate executives during internal calls to authorize malicious downloads.

🦠 Malware Delivery: The "resumes" often contain hidden scripts or links to cloud-hosted malware that, once opened, provide attackers with a persistent foothold in the corporate network.

🛡️ Verification is Vital: Organizations must implement multi-factor identity verification for remote candidates and treat any request to download software or disable security settings during the hiring process as a high-risk red flag.

🔗 [Source](https://www.securonix.com/blog/faux-elevate-threat-actors-crypto-miners-and-infostealers/S)

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
