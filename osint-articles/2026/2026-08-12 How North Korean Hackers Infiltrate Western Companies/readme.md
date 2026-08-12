# How North Korean Hackers Infiltrate Western Companies 

Cybersecurity researchers successfully set up a fake DeFi startup to hire North Korean IT operatives linked to the Lazarus Group, exposing their complex infiltration tactics from the inside out. This unprecedented sting operation revealed how state-sponsored actors use forged identities, AI tools, and remote facilitators to bypass HR and gain legitimate access to corporate systems, IP, and source code.

Key takeaways:

**🎯 Target**: Western companies, especially those in the cryptocurrency, decentralized finance (DeFi), and healthcare sectors, that are actively hiring remote developers and engineers.

**💡 Insight**: Operatives bypass standard hiring checks by utilizing AI-generated IDs (often containing hidden AI watermarks like SynthID) and relying on live, off-screen AI translation tools to seamlessly navigate video interviews.

**☑️ Recommendation 1**: Overhaul your HR onboarding process to include rigorous forensic checks on submitted IDs, specifically looking for AI manipulation, metadata inconsistencies, and visual anomalies. Utilize tracking links or canary tokens during the interview process to verify a candidate's true geographic location.

**☑️ Recommendation 2**: Treat insider threats as a persistent risk. Enforce the principle of least privilege across all code repositories and critical systems, and continuously monitor remote employee behavior for signs of proxy connections or unauthorized remote access tools.

🔗 [Source](https://any.run/cybersecurity-blog/lazarus-group-it-workers-investigation-part-two/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
