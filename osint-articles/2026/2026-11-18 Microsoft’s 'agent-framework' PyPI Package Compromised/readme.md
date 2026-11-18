# Microsoft’s 'agent-framework' PyPI Package Compromised 

Malicious versions (1.26.1 and 1.26.2) of Microsoft’s widely-used `agent-framework` Python package were recently uploaded to PyPI, injecting a stealthy credential stealer into developer environments. The malicious code is designed to run automatically when Python starts, immediately hunting for cloud, CI/CD pipeline, and repository secrets.

Key takeaways:

**🎯 Target:** Developers, CI/CD pipelines, and cloud environments utilizing Azure, Azure DevOps, and GitHub Actions.

**💡 Insight:** The attackers achieved deep persistence by dropping a `.pth` file into the Python `site-packages` directory. This clever execution technique ensures the malware runs every time the Python interpreter is launched in that environment, even if the compromised `agent-framework` package is never explicitly imported into the codebase.

**☑️ Recommendation 1:** Immediately search your environment’s lockfiles, CI logs, container images, and virtualenvs for versions 1.26.1 or 1.26.2 of the `agent-framework` package. Pin your installations to the last known-safe version, 1.26.0.

**☑️ Recommendation 2:** If exposure is detected, assume compromise and rapidly rotate all exposed secrets. This includes Azure CLI sessions, DevOps PATs, NPM/PyPI tokens, Hugging Face credentials, and any variables in `.env` files on affected hosts.

**☑️ Recommendation 3:** Conduct a comprehensive audit of your Azure identities and GitHub Actions OIDC configurations. Review sign-in activity logs for any managed identities or federated credentials that were reachable from the affected instances to ensure no persistent access was established. 

🔗 [Source](https://www.wiz.io/blog/malicious-version-of-microsofts-agent-framework-published-to-pypi)

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
