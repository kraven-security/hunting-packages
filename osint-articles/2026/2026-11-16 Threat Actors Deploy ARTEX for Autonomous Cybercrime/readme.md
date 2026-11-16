# Threat Actors Deploy ARTEX for Autonomous Cybercrime

Amazon Threat Intelligence has uncovered threat actors weaponizing ARTEX, an open-source agentic AI framework, to autonomously execute large-scale credential theft and sophisticated deepfake attacks. This marks a major shift in the threat landscape, showing that agentic AI has moved from experimental tooling to fully operational, self-sustaining campaigns that require minimal human intervention.

Key takeaways:

**🎯 Target:** AI applications, model gateways, cloud environments holding API keys, and cryptocurrency exchanges relying on KYC identity verification.

**💡 Insight:** The threat actors created a self-sustaining operation in which stolen API keys were automatically funneled back into the AI agent framework to fund further credential hunting and real-time deepfake generation to bypass liveness checks.

**☑️ Recommendation 1:** Immediately audit and secure all AI inference endpoints and management interfaces, rotating any default credentials and removing hardcoded keys from public code repositories.

**☑️ Recommendation 2:** Implement continuous monitoring on your cloud billing and AI service usage logs to quickly detect anomalies, such as unexpected spikes in API spend that could indicate hijacked credentials.

**☑️ Recommendation 3:** Integrate all AI applications and model gateways into your organization's core zero-trust architecture, treating them with the same security rigor as critical production environments since misconfigurations will be rapidly exploited by autonomous agents.

🔗 [Source](https://aws.amazon.com/blogs/security/amazon-threat-intelligence-observes-threat-actors-running-cybercrime-campaigns-with-artex-ai-agents/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
