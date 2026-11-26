# Fake .NET Job Assessments Weaponize 13 Malicious NuGet Packages to Steal Developer Credentials

Socket researchers uncovered a supply chain campaign using poisoned coding tests to compromise Windows .NET developers. By bundling 13 malicious NuGet packages alongside trojanized npm libraries, attackers use Visual Studio builds to steal developer credentials via GitHub and Telegram C2.

Key takeaways:

**🎯 Target:** Windows .NET and Web3/JavaScript software developers completing take-home coding interviews or freelance assessments on native developer workstations.

**💡 Insight:** Execution splits into two stages: an MSBuild `.targets` file (`VS_Builder.MSBuildAnalyzer` / `HappyOne.MSBuildAnalyzer`) silently stages a DLL side-loading pair after each build, while a UI button control (`WinUI3Controls` / `WinUI.Button`) triggers the payload at runtime when rendering the app window.

**☑️ Recommendation 1:** Never clone, build, or execute take-home interview projects or freelance coding tests on your primary workstation, always use an isolated, disposable virtual machine or container stripped of personal browser profiles, SSH keys, and cloud tokens.

**☑️ Recommendation 2:** Inspect `NuGet.config`, `.csproj` files, and local `Packages/` folders for custom restore feeds (`RestoreAdditionalProjectSources`), unverified `.nupkg` binaries, or `AfterTargets="Build"` hooks before opening a third-party repository in Visual Studio.

**☑️ Recommendation 3:** Implement long-term endpoint and package-governance controls, including EDR alerts for `osk.exe` executing outside `C:\Windows\System32`, software composition analysis (SCA) policies blocking unvetted or local package feeds, and regular rotation of developer GitHub and cloud tokens.

🔗 [Source](https://socket.dev/blog/malicious-nuget-packages-fake-job-assessments)

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
