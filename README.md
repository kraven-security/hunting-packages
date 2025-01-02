# Threat Hunting Packages

A project designed to make the operationalization of open-source cyber threat intelligence more efficient. It includes hunting packages that you that allow you to easily use open-source threat intelligence and threat hunting scripts to use this intelligence with your favorite security tooling.

## OSINT Articles

A collection of open-source threat intelligence articles with their indicators (IOCs) and detection/hunting opportunities stripped out to them make actionable. These threat hunting packages can be used to proactively defend yourself against the latest cyber threats described in open-source reports.

## Threat Hunting Scripts

A collection of scripts that target various security tool. These are designed to make the indicators included in open-source threat intelligence articles easy to operationalize.

Scripts includes:

- `verify-iocs-vt.py`: Verify IOCs using VirusTotal Community API.
- `iocs-to-cs.py`: Upload IOCs to CrowdStrike Falcon IOC Management for detection and blocking.
