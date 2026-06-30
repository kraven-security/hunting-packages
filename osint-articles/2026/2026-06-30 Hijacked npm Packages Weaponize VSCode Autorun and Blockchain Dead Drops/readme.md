# Hijacked npm Packages Weaponize VSCode Autorun and Blockchain Dead Drops 

JFrog Security Research uncovered an evasive supply chain attack hijacking npm packages (`html-to-gutenberg` and `fetch-page-assets`). The malware bypasses scripts by using a hidden VS Code background task that runs automatically when a project folder is opened. Additionally, it leverages encrypted public blockchain transactions as decentralized dead drops for its C2 instructions and multi-staged payloads.

Key takeaways

**🎯 Target**: Software developers and DevOps engineers using Visual Studio Code (or related forks like Cursor) who interact with open-source npm packages, alongside a massive sweep targeting cryptocurrency wallets, web browser credentials, and local Git configurations.

**💡 Insight**: The operation completely bypasses traditional security hardening by ignoring npm lifecycle hooks, opting instead to disguise executable JavaScript code inside a fake font asset (`fa-solid-400.woff2`) that leverages VS Code's `runOn: "folderOpen"` feature. It also features a bulletproof secondary stage that extracts its command-and-control (C2) instructions directly from the transaction input fields of public blockchains (Tron, Aptos, and BSC).

**☑️ Recommendation 1**: Audit developer environments immediately for unvetted `.vscode/tasks.json` configuration files utilizing the auto-run parameters, and manually uninstall the compromised dependencies (`npm uninstall html-to-gutenberg fetch-page-assets`).

**☑️ Recommendation 2**: Network administrators should proactively block newly uncovered malicious command-and-control indicators (`166.88.134.62`, `198.105.127.210`, and `23.27.202.27`) and enforce centralized workspace trust configurations across developer IDE platforms to prevent automatic task execution on untrusted directories.

🔗 [Source](https://research.jfrog.com/post/hijacked-npm-vscode-tasks-blockchain/)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All network IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
