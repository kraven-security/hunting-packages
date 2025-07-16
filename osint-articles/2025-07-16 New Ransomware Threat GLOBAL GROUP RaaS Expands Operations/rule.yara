rule MAL_CRIME_RANSOM_GLOBAL_GO
{
    meta:
        description = "Detect GLOBAL Ransomware"
        author      = "Arda Büyükkaya (EclecticIQ)"
        date        = "2025-07-10"
        tags        = "Global Ransomware"
        tlp         = "white"
        sha256 = "a8c28bd6f0f1fe6a9b880400853fc86e46d87b69565ef15d8ab757979cd2cc73"

    strings:
        /* ransom-note */
        $note  = { 47 4C 4F 42 41 4C 0A 0A 59 4F 55 52 20 46 49 4C 45 53 20 48 41 56 45 20 42 45 45 4E 20 53 54 4F 4C 45 4E 20 41 4E 44 20 45 4E 43 52 59 50 54 45 44 }

        /* “ReadMe.Global.” */
        $tag   = { 52 45 41 44 4D 45 2E 47 6C 6F 62 61 6C 2E }

        /* Tor v3 .onion domain pattern (56 chars) */
        $onion = /[a-z2-7]{56}\.onion/ ascii

        /* Go build-ID (works PE/ELF/Mach-O) */
        $goid  = /Go build ID: \"[a-zA-Z0-9\/_-]{40,120}\"/ ascii wide

    condition:
        /* executable header check (PE or ELF is enough for Windows/*nix deployments) */
        (uint16(0) == 0x5A4D or uint32(0) == 0x464C457F) and
        /* proven Go binary */
        $goid and
        /* all three GLOBAL-specific artefacts present */
        all of ($note, $tag, $onion)
}