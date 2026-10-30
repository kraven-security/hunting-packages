rule yoba_dropper
{
    meta:
        author = "@Tera0017/Check Point Research"
        description = "YobaDropper"
    strings:
        $code1 = {00 BB 40 0D 03 00 B9 7C 15 00 00 FF D6 31 C0}
        $code2 = {BA 05 15 00 00 0F BE 08 84 C9 74 0A 6B D2 21}
        $code3 = {53 B9 75 EE 40 70 48 83 EC 20}
        $code4 = {BA 5C CD 17 E5 48 89 C1 E8 73 00 00 00}
        $code5 = {0F C8 89 C0 4? 39 ?? 74 1? (49 0F AF C0| 48 69 C0 ?? ?? ?? ??) (4C 01 C8| 48 05 ?? ?? ?? ??) 49 89 C? 49 C1 E? 18 45 30 [2] 4? FF ?? EB}
    condition:
        uint16(0) == 0x5A4D and 2 of them
}

rule yoba_loader
{
    meta:
        author = "@Tera0017/Check Point Research"
        description = "YobaLoader"
    strings:
        $code1 = {B9 80 A8 12 01 FF ?? ?? E9}
        $code2 = {BA EB 1D 00 00 0F BE 08 84 C9 74 0A 6B D2 21}
        $code3 = {B9 5B 80 EF B7 E8}
        $code4 = {BA F5 8B 2E F2 48 89 C1}
        $code5 = {B5 C2 D2 06 23 D4 E6 64 7D 06 A4 28 64 ED D8 62 9F 82 C5 C3 84 B2 43 FD AE EE CA 24 B3 87 3D 64}
        $code6 = {1D 0D 13 68 B4 D5 3F 3A 63 22 CF 40 E8 4E 63 DB}
        $code7 = {40 80 FE 32 74 42 40 80 FE 33 74 66 40 80 FE 31}
        $code8 = {41 81 F8 A5 DE 6C C2}
    condition:
        uint16(0) == 0x5A4D and 2 of them
}