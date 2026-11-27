# Exposing Remus Stealer’s Fake Gmail Zero-Day

Threat actors behind Remus Stealer advertised a fake "Gmail zero-day." In reality, the malware silently tampers with Google Chrome profile settings to force-install a rogue "Google Sheets" extension that siphons emails whenever a user is logged in.

Key takeaways:

**🎯 Target:** Individual and enterprise Google Chrome users whose Windows endpoints become infected with Remus Stealer, affecting up to 10 signed-in Gmail accounts per browser profile.

**💡 Insight:** To bypass Chrome 137's removal of the `--load-extension` command-line flag, Remus alters Chrome's `Preferences` and `Secure Preferences` files, recalculates their HMAC integrity hashes, enables Developer Mode, and sideloads an unpacked extension that polls Gmail's Atom feed every minute, automatically resuming email theft as soon as a victim logs back in after a password reset.

**☑️ Recommendation 1:** Open `chrome://extensions` immediately. If Developer mode is unexpectedly toggled on or you see an unpacked "Google Sheets" extension, remove it right away, run a full endpoint malware scan, and then change your Google password.

**☑️ Recommendation 2:** Always remediate the infected device *before* signing back into sensitive accounts; resetting passwords or revoking sessions on a compromised machine leaves the rogue browser extension intact to recapture access upon re-login.

**☑️ Recommendation 3:** For enterprise environments, enforce Chrome browser policies to disable Developer Mode and restrict extension installations strictly to an approved allowlist.

🔗 [Source](https://www.gendigital.com/blog/insights/research/remus-stealer-email-interception-analysis)

## Package Content

- `iocs.txt`: List of all Indicators of Compromise (IOCs) in the article. All endpoint IOCs.

<br>

> [!NOTE]
> Use the following scripts in [threat-hunting-scripts](../../threat-hunting-scripts/) to help you hunt:
>
> - `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
> - `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
