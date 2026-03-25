rule win_mal_FatMalloc {
    meta:
        author = "RussianPanda"
        description = "Detects FatMalloc Crypter"
        date = "3/16/2025"
		hash = "8a4033425d36cd99fe23e6faef9764fbf555f362ebdb5b72379342fbbe4c5531"
    strings:
        $s1 = {48 89 E8 48 8B 3C 24 48 8D 64 24 08 5E 5B 5D FF E0}
        $s2 = {88 E3 32 1C 0E 88 5C 15 00}
		$s3 = "timeSetEvent"
    condition:
        uint16(0) == 0x5A4D and all of ($s*)
}

rule win_mal_HwAudKiller {
    meta:
        author = "RussianPanda"
        description = "Detects HwAudKiller BYOVD AV/EDR killer "
        date = "3/16/2025"
		hash = "28278b8c85c832417f9860fe8ea3ddbb9ff1d5860317db4813227a3a52b7c7cc"
    strings:
        $s1 = "[+] Havoc Process Terminator"
        $s2 = "sc create Havoc"
    condition:
        uint16(0) == 0x5A4D and all of ($s*)
}

