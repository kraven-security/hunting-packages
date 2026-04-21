rule thegentlemen_ransomware
{
    meta:
        author = "@Tera0017/Check Point Research"
        description = "The Gentlemen Ransomware written in GO."
    strings:
        $string1 = "Silent mode (don't rename files)" ascii
        $string2 = "Encrypt only mapped and UNC network shares" ascii
        $string3 = "README-GENTLEMEN.txt" ascii
        $string4 = "gentlemen.bmp" ascii
        $string5 = "gentlemen_system" ascii
        $string6 = "[+] Encryption started. Going background..." ascii
        $string7 = "[+] FULL Encryption started" ascii
    condition:
        uint16(0) == 0x5A4D and 4 of them
}