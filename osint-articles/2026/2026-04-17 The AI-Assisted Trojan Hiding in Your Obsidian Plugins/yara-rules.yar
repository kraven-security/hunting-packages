rule Windows_Trojan_PhantomPull {
    meta:
        author = "Elastic Security"
        os = "Windows"
        category_type = "Trojan"
        family = "PhantomPull"
        threat_name = "Windows.Trojan.PhantomPull"
        reference_sample = "70bbb38b70fd836d66e8166ec27be9aa8535b3876596fc80c45e3de4ce327980"

    strings:
        $GetTickCount = { 48 83 C4 80 FF 15 ?? ?? ?? ?? 83 F8 FE 75 }
        $djb2 = { 45 8B 0C 83 41 BA A7 C6 67 4E 49 01 C9 45 8A 01 }
        $mutex = { 48 89 EB 83 E3 ?? 45 8A 2C 1C 45 32 2C 2E 45 0F B6 FD }
        $str_decrypt = { 39 C2 7E ?? 49 89 C1 41 83 E1 ?? 47 8A 1C 0A 44 32 1C 01 45 88 1C 00 48 FF C0 }
        $payload_decrypt = { 4C 89 C8 83 E0 0F 41 8A 14 02 43 30 14 0F 49 FF C1 44 39 CB }
        $url = "/v1/updates/check?build=payloads" ascii fullword
    condition:
        3 of them
}

rule Windows_Trojan_PhantomPulse {
    meta:
        author = "Elastic Security"
        os = "Windows"
        category_type = "Trojan"
        family = "PhantomPulse"
        threat_name = "Windows.Trojan.PhantomPulse"
        reference_sample = "9e3890d43366faec26523edaf91712640056ea2481cdefe2f5dfa6b2b642085d"

    strings:
        $a = "[UNINSTALL 2/6] Removing Scheduled Task..." fullword
        $b = "PhantomInject: host PID=%lu" fullword
        $c = "inject: shellcode detected -> InjectShellcodePhantom" fullword
        $d = "inject: shellcode detected, using phantom section hijack" fullword
    condition:
        all of them
}