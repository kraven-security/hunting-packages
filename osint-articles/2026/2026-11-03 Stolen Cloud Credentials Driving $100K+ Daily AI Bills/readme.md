# Stolen Cloud Credentials Driving $100K+ Daily AI Bills 

Mandiant and Google Threat Intelligence have uncovered a massive "LLMJacking" campaign where cybercriminals steal cloud API keys to illicitly consume enterprise generative AI resources. Threat actors are inflicting catastrophic daily cloud bills exceeding \$100,000 per victim by proxying high-end foundational model access into underground resale markets.

Key takeaways:

**🎯 Target**: Enterprises integrating higher-tier LLMs and agentic workflows into their cloud infrastructure that suffer from exposed API tokens, vulnerable routing middleware, or weak Identity and Access Management (IAM) controls.

**💡 Insight**: LLMJacking is quickly outpacing traditional cryptojacking because underground "LLM Mixers" (such as Jet Night) enable instant, high-margin monetization, allowing attackers to generate up to \$1 million in fraudulent charges in a matter of days before defenders detect the anomaly.

**☑️ Recommendation 1**: Immediately audit your cloud IAM hygiene to enforce least-privilege access, ensuring no service account or workload holds standing permissions to generative AI platforms beyond its explicit operational need.

**☑️ Recommendation 2**: Configure aggressive cost anomaly detection and strict multicloud billing alerts to instantly identify unauthorized spikes in LLM API call volumes or sudden credential checks against secret managers.

**☑️ Recommendation 3**: Implement Zero Trust network segmentation and strict egress policy enforcement to isolate AI inference workloads and block unauthorized API relay traffic destined for external proxy infrastructure.

🔗 [Source](https://cloud.google.com/blog/topics/threat-intelligence/llmjacking-monetizing-compromised-cloud-models)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOSs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
