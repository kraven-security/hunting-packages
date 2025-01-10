private rule macos_binary
{
  meta:
    author = "Antonis Terefos @Tera0017/@Check Point Research"
    descr = "MacOS file format"
  condition:
     uint32(0) == 0xFEEDFACE or uint32(0) == 0xFEEDFACF or uint32(0) == 0xBEBAFECA
}

rule banshee_macos
{
  meta:
    author = "Antonis Terefos @Tera0017/@Check Point Research"
    descr = "Banshee MacOS stealer, encrypted strings version"
    sha256 = "ce371a92e905d12cb16b5c273429ae91d6ff5485dda04bfedf002d2006856038"
  strings:
    // x64 
    $x64_code_str_decr1 = {80 E1 ?? (48| 49) 89 (DE| F0| FE) (48| 49) D3 (EE| E8) (40| 44) 30 ?? 48 83 C2 08}
    $x64_code_str_decr12 = {0B 09 7D 92 2B 25 CB 9A 4C 01 40 39 8B 01 0B 4A 4B 15 00 38}
    $x64_code_str_decr2 = {48 89 ?? 48 D3 [1-2] 30 ?? 48 83 C1 08 48 FF C?}
    $x64_code_str_decr3 = {81 30 [4] C6 40 04 00}
    $x64_code_str_decr4 = {2B 25 C8 9A 4C 01 40 39 8B 01 0B 4A 4B 15 00 38 08 21 00 91}
    $x64_code_campid = {88 14 08 8A 54 31 02 48 FF C1 48 83 F9 1D}
    $x64_code_gen1 = {C6 40 09 00 31 C9 8A 14 08}
    $x64_code_gen2 = {88 14 31 8A 54 30 02 48 FF C6 84 D2}
    $x64_code_gen3 = {72 00 77 00 [30] 00 3B 00 00}
    // Arm
    $arm_code_str_decr1 = {0B 09 7D 92 2B 25 CB 9A 4C 01 40 39 8B 01 0B 4A 4B 15 00 38 08 21 00 91}
    $arm_code_str_decr2 = {2B 25 C8 9A 4C 01 40 39 8B 01 0B 4A 4B 15 00 38 08 21 00 91}
    $arm_code_campid = {6C 01 09 8B 0A 69 29 38 8A 05 40 39 29 05 00 91 3F 79 00 F1}
    $arm_code_gen1 = {1F 24 00 39 08 00 80 D2}
    $arm_code_gen2 = {72 00 77 00 [30] 00 3B 00 00}
  condition:
    macos_binary and 6 of ($x64_code*) or all of ($arm_code*)
}

