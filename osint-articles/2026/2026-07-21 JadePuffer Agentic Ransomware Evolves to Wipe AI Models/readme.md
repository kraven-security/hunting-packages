# JadePuffer Agentic Ransomware Evolves to Wipe AI Models 

JadePuffer, the first autonomous LLM-driven ransomware, has evolved to target AI/ML infrastructure. By exploiting orchestration endpoints, the agent now deploys the ENCFORGE locker to systematically destroy critical datasets and model weights.

Key takeaways

**🎯 Target**: Enterprise organizations deploying internet-exposed AI orchestration frameworks (such as Langflow), configuration management services, and production ML servers hosting trained model checkpoints, vector databases, and training datasets.

**💡 Insight**: JadePuffer operates as a fully autonomous agentic threat actor that generates self-narrating payloads, self-corrects failed attack steps in as little as 31 seconds, and deploys the Go-based ENCFORGE locker to target \~180 AI/ML file formats—permanently destroying models without exfiltrating or saving the decryption key.

**☑️ Recommendation 1**: Immediately isolate and patch internet-exposed AI tools (specifically fixing Langflow CVE-2025-3248), strip API keys and credentials from runtime environments, and harden default configuration controls.

**☑️ Recommendation 2**: Implement immutable, air-gapped offline backups specifically for AI model checkpoints, fine-tuning adapters, and training datasets, as re-training lost models can cost $75,000–$500,000+ per model.

**☑️ Recommendation 3**: Upgrade detection architectures from static IoC matching to real-time session and behavioral monitoring capable of spotting machine-speed execution loops, automated payload adjustments, and anomalous egress traffic.

🔗 [Source](https://www.sysdig.com/blog/jadepuffer-evolves-the-agentic-threat-actor-deploys-ransomware-built-to-destroy-ai-models)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. 
- `endpoint-iocs.txt`: List of endpoint IOCs in the article.
- `network-iocs.txt`: List of network IOCs in the article.
- `yara-rules.yar`: List of YARA detection rules in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
