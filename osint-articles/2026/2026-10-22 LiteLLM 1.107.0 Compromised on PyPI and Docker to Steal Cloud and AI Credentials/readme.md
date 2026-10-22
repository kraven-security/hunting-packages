# LiteLLM 1.107.0 Compromised on PyPI and Docker to Steal Cloud and AI Credentials 

A sophisticated supply chain attack compromised LiteLLM version 1.107.0 across PyPI and container registries, deploying a credential-stealing payload and remote Python loader via package startup hooks. Developers and organizations utilizing this version face immediate exposure of cloud tokens, developer keys, and AI provider credentials.

Key takeaways:

**🎯 Target:** Software developers, DevOps teams, and AI engineers utilizing LiteLLM version 1.107.0 across PyPI packages and container images (including floating tags like `latest`).

**💡 Insight:** The malware uses Python startup hooks (`cook.pth` and `sitecustomize.py`) to run automatically when Python or pip starts, meaning simply running an interpreter to inspect the installation triggers the credential stealer without ever importing LiteLLM.

**☑️ Recommendation 1:** Immediately block and remove `litellm==1.107.0`, pin container digests, and isolate any environment where Python executed after installation to treat stored secrets as compromised.

**☑️ Recommendation 2:** Revoke and replace all exposed credentials from a clean environment, including cloud provider keys, AI API tokens, Git credentials, and database connection strings.

**☑️ Recommendation 3:** Audit release pipelines, restrict publishing permissions to verified repository identities, and pin software supply chain dependencies to prevent unauthorized code injection in future builds.

🔗 [Source](https://socket.dev/blog/litellm-compromise)

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
