rule ENCFORGE_Ransomware_Unpacked {
    meta:
        description = "Detects ENCFORGE ransomware locker (unpacked ELF) targeting AI/ML infrastructure, attributed to JADEPUFFER"
        author      = "Sysdig Threat Research Team"
        date        = "2026-07-15"
        sha256      = "ea7822eac6cecef7746c606b862b4d3034856caf754c4cf69533662637905328"
        tlp         = "WHITE"

    strings:
        // Go source paths compiled into the binary; survive recompilation of the same codebase
        $pkg_enc      = "encfile/internal/cli/enc" ascii
        $pkg_crypter  = "encfile/internal/crypter" ascii
        $pkg_discover = "encfile/internal/discover" ascii

        // Companion keygen tool reference embedded in error text
        $keyforge     = "run keyforge gen" ascii

        // CLI safety-gate output (printed when --lock flag is absent)
        $tryrun       = "TRY-RUN (scan-only, --lock not set)" ascii

        // Anti-recovery and process-kill log strings
        $killing      = "killing holders" ascii
        $dis_recovery = "[*] Disabling recovery" ascii

        // Encrypted-file rename log entry
        $renamed      = "encrypted+renamed:" ascii

        // Ransom note: per-victim key isolation notice
        $unique_key   = "Do NOT share this file. Each victim has a unique key." ascii

        // Build-specific: prefix of the embedded RSA-2048 public key
        $rsa_key      = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7wZB6Q" ascii

    condition:
        uint32(0) == 0x464c457f  // ELF magic
        and filesize > 2MB
        and filesize < 15MB
        and (
            // Family: package paths confirm encfile codebase + any two behavioral strings
            (2 of ($pkg_*) and 2 of ($keyforge, $tryrun, $killing, $dis_recovery, $renamed, $unique_key)))
            or
            // Build-specific: RSA key prefix + at least one package path
            ($rsa_key and 1 of ($pkg_*))
        )
}