"""Regression test for extract_iocs.py. Run: python -I tests/test_extract.py"""
import json
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
SCRIPT = HERE.parent / "scripts" / "extract_iocs.py"

out = subprocess.run([sys.executable, "-I", str(SCRIPT), str(HERE / "fixture_injection.html")],
                     capture_output=True, text=True, check=True).stdout
d = json.loads(out)
got = {v for vals in d["iocs"].values() for v in vals}
review = {r["value"] for r in d["review"]}
filtered = {r["value"] for r in d["filtered_by_warninglist"]}

must_have = {
    "malicious-update.xyz", "cdn.malicious-update.xyz", "login-microsoft-secure.com",
    "45.133.216.5", "http://bad-c2.top:8080/gate.php?id=1", "bad-c2.top",
    "https://github.com/evil-org/payload/raw/main/x.exe", "pastebin.com/AbCd1234",
    "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08",
    "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3", "exfil-mail.top",
}
must_not_have = {
    # only in <script>/<style>/<nav>/<footer>
    "script-only-domain.xyz", "script-only-url.top", "style-only.top", "nav-only-domain.top",
    "footer-only-domain.top", "nav-link.example.net",
    # file names / tech names / versions
    "setup.sh", "main.py", "readme.md", "node.js", "asp.net", "1.2.3.4", "120.0.6099.109",
    # warninglisted benign
    "8.8.8.8", "10.0.0.5", "google.com", "github.com", "pastebin.com",
    "d41d8cd98f00b204e9800998ecf8427e",
    # hex token with no hash context
    "5f2b9c1e7a3d4b6c8e0f1a2b3c4d5e6f",
}
fails = []
for v in must_have - got:
    fails.append(f"MISSING {v}")
for v in must_not_have & got:
    fails.append(f"FALSE POSITIVE in output {v}")
if "setup.sh" not in review:
    fails.append("setup.sh should be in review")
if "d41d8cd98f00b204e9800998ecf8427e" not in filtered:
    fails.append("empty-file md5 should be filtered by warninglist")
for r in d["review"]:
    if len(r.get("context", "")) > 200:
        fails.append(f"context too long for {r['value']}")

print(json.dumps(d["counts"]))
if fails:
    print("\n".join(fails))
    sys.exit(1)
print("PASS")
