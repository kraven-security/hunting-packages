from dataclasses import dataclass


@dataclass
class config:
    # MISP authentication vars
    # The URL of the MISP instance to connect to
    MISP_URL: str = ""
    # Can be found in the MISP web interface under ||
    # http://+MISP_URL+/users/view/me -> Authkey
    MISP_KEY: str = ""
    # Should PyMISP verify the MISP certificate
    MISP_VERIFYCERT: bool = False

    # CrowdStrike authentication vars
    CS_CLIENT_ID: str = ""
    CS_CLIENT_SECRET: str = ""

    # VirusTotal community edition API
    VT_API_KEY = ""


@dataclass
class Colors:
    BLUE = "\033[94m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    RED = "\033[91m"
    PURPLE = "\033[95m"
    ENDC = "\033[0m"


@dataclass
class TextFormat:
    BOLD = "\033[1m"
