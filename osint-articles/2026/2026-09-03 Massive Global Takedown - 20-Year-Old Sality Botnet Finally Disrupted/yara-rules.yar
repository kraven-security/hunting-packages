rule CrowdStrike_Salityv3_01 : p2p sality version3
{
    meta:
        copyright = "(c) 2026 CrowdStrike Inc."
        description = "Sality Version 3"
        version = "202608181745"
        last_modified = "2026-08-18"
        actor = "SALTY SPIDER"
        malware_family = "Sality"
    strings:
        $ = "IPFILTERDRIVER"
        $ = {
            99 65 40 34 cd ae 9d b3  af f5 82 ad 8c 2e 63 51
            e1 34 53 fa 47 54 e4 70  97 4c a5 3d 3c a3 9b 57
            29 02 49 89 46 4c f2 76  b1 ad 8e 79 5d b2 41 28
            4f 2a a5 9a 13 18 c0 1d  ed da e4 52 98 16 7f b3
            a9 d7 7a e4 c4 6f 51 f6  38 fe a6 fb ad 8c 64 1d
            23 b5 a4 9d 40 20 74 61  be 81 c3 eb 3d 24 01 75
            13 07 58 c5 f0 56 09 94  58 e7 6b c3 f3 8c 70 73
            4e f5 0b 2d 88 0b 9a bd  18 e4 36 72 26 1a 32 9b
        }
    condition:
        all of them
}

rule CrowdStrike_Salityv4_01 : p2p sality version4
{
    meta:
        copyright = "(c) 2026 CrowdStrike Inc."
        description = "Sality Version 4"
        version = "202608181745"
        last_modified = "2026-08-18"
        actor = "SALTY SPIDER"
        malware_family = "Sality"
    strings:
        $ = "IPFILTERDRIVER"
        $ = {
            bb d2 96 8e ed 0b 93 8a  82 e4 e9 bc c3 c5 32 72
            4c 08 aa 56 9f 2d 64 0f  1b 86 68 0e 2b 62 e9 c6
            35 6d 75 b6 32 2d 4f a8  b8 d9 2a 44 8b f0 7f e0
            d9 8e be 66 9d a6 7a 9a  6d e1 45 f1 d3 48 01 0d
            39 2e 9d 2a 45 fb 0b fb  1d 96 f3 b7 4f 55 e5 e1
            16 5b f7 a1 cc 7c 87 c0  c8 9c ef 4e ce 29 58 e2
            99 bd 8a 7a 55 be b4 1c  d9 79 52 25 d8 28 86 7b
            81 39 98 5f 2c 6f 14 bb  a5 6b ce 44 e5 91 93 38
            8b 9a c1 74 46 84 e1 26  ec 04 94 96 75 09 e3 b5
            88 d6 08 f0 4a b7 84 d3  13 2f 00 cc d5 2a 8c 17
            07 09 de 6f b0 d3 d6 2b  c6 a6 9d 38 18 8c 74 9d
            86 16 d5 48 6e 97 32 db  e1 4e f8 04 a6 00 7c 16
            2e 70 1c 23 37 dd 5a 52  76 62 70 d4 86 66 6e df
            0c e9 a1 68 f9 5e e8 dd  09 0c 02 7d 35 d0 54 e7
            00 c0 14 9f ce 4a 9f f3  99 50 1a 0b cd cc ff 05
            b9 04 12 e2 11 76 2f ff  a4 6e 64 18 e0 d0 7b 3b
        }
    condition:
        all of them
}
