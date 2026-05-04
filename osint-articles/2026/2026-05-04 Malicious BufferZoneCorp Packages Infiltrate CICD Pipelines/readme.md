# Malicious "BufferZoneCorp" Packages Infiltrate CI/CD Pipelines

A sophisticated supply chain attack targeting the Ruby and Go ecosystems has been uncovered, leveraging "sleeper" packages to steal developer secrets and establish persistence in build environments. The campaign, linked to the GitHub account BufferZoneCorp, uses deceptive modules to exfiltrate AWS credentials and SSH keys, and to poison GitHub Actions workflows.

Key takeaways

🎯 Target: Developers and DevOps engineers utilizing RubyGems and Go modules, specifically those managing automated CI/CD runners and high-privilege build environments.

💡 Insight: Beyond simple theft, this campaign employs advanced persistence techniques, such as planting "fake go wrappers" and manipulating GOPROXY settings to intercept future tool executions and bypass security checksums.

☑️ Recommendation 1: Immediately audit your project dependencies for any packages associated with the "BufferZoneCorp" GitHub account or those using the knot- prefix in RubyGems (e.g., knot-activesupport-logger).

☑️ Recommendation 2: Rotate all sensitive credentials, including AWS keys, SSH private keys, and GitHub tokens, if any suspicious modules were detected, as these packages actively harvest environment variables upon installation.

☑️ Recommendation 3: Implement long-term "review gates" for new third-party utilities and enforce Software Composition Analysis (SCA) tools that can detect suspicious init() or extconf.rb execution behaviors before they reach production.

🔗 [Source](https://socket.dev/blog/73-open-vsx-sleeper-extensions-glassworm)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.
- `malicious-ruby-gems.txt`: List of malicious ruby gems in the article.
- `malicious-go-modules.txt`: List of go modules in the article.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
