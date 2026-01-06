import "elf"

rule MAL_LinkPro_ELF_Rootkit_Golang_Oct25 {
  meta:
    description = "Detects LinkPro rootkit"
    author = "CSIRT Synacktiv, Théo Letailleur"
    date = "2025-10-13"
    reference = "https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis"
    hash = "1368f3a8a8254feea14af7dc928af6847cab8fcceec4f21e0166843a75e81964"
    hash = "d5b2202b7308b25bda8e106552dafb8b6e739ca62287ee33ec77abe4016e698b"
  strings:
    $linkp_mod = "link-pro/link-client" fullword ascii
    $linkp_embed_libld = "resources/libld.so" fullword ascii
    $linkp_embed_lkm = "resources/arp_diag.ko" fullword ascii
    $linkp_ebpf_hide = "hidePrograms" fullword ascii
    $linkp_ebpf_knock = "knock_prog" fullword ascii

    $go_pty = "creack/pty" fullword ascii
    $go_socks = "resocks" fullword ascii

  condition:
    uint32(0) == 0x464c457f and filesize > 5MB and elf.type == elf.ET_EXEC 
    and 2 of ($linkp*) 
    and 1 of ($go*)
}

rule MAL_LinkPro_Hide_ELF_BPF_Oct25 {
  meta:
    description = "Detects LinkPro Hide eBPF module"
    author = "CSIRT Synacktiv, Théo Letailleur"
    date = "2025-10-13"
    reference = "https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis"
    hash = "b8c8f9888a8764df73442ea78393fe12464e160d840c0e7e573f5d9ea226e164"
  strings:
    $hook_getdents = "/syscalls/sys_enter_getdents" fullword ascii
    $hook_getdentsret = "/syscalls/sys_exit_getdents" fullword ascii
    $hook_bpf = "/syscalls/sys_enter_bpf" fullword ascii
    $hook_bpfret = "sys_bpf" fullword ascii
    $str1 = "BPF cmd: %d, start_id: %u" fullword ascii
    $str2 = "HIDING NEXT_ID: %u" fullword ascii
    $str3 = ".tmp~data" fullword ascii

  condition:
    uint32(0) == 0x464c457f and uint16(0x12) == 0x00f7 // BPF Machine
    and elf.type == elf.ET_REL  
    and 2 of ($hook*)
    and 1 of ($str*)
}

rule MAL_LinkPro_Knock_ELF_BPF_Oct25 {
  meta:
    description = "Detects LinkPro Knock eBPF module"
    author = "CSIRT Synacktiv, Théo Letailleur"
    date = "2025-10-13"
    reference = "https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis"
    hash = "364c680f0cab651bb119aa1cd82fefda9384853b1e8f467bcad91c9bdef097d3"
  strings:
    $hook_xdp = "xdp_ingress" fullword ascii
    $hook_tc_egress = "tc_egress" fullword ascii
    $str1 = "[DBG-XDP]" fullword ascii
    $str2 = "[DBG-9999]" fullword ascii
    $str3 = "[TC-MISS]" fullword ascii
    $str4 = "[TC] REWRITE_BACK" fullword ascii
  condition:
    uint32(0) == 0x464c457f and uint16(0x12) == 0x00f7 // BPF Machine
    and elf.type == elf.ET_REL 
    and 1 of ($hook*)
    and 2 of ($str*)
}

rule MAL_LinkPro_LdPreload_ELF_SO_Oct25 {
  meta:
    description = "Detects LinkPro ld preload module"
    author = "CSIRT Synacktiv, Théo Letailleur"
    date = "2025-10-13"
    reference = "https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis"
    hash = "b11a1aa2809708101b0e2067bd40549fac4880522f7086eb15b71bfb322ff5e7"
  strings:
    $hook_getdents = "getdents" fullword ascii
    $hook_open = "open" fullword ascii
    $hook_readdir = "readdir" fullword ascii
    $hook_kill = "kill" fullword ascii
    $linkpro = ".tmp~data" fullword ascii
    $file_net = "/proc/net" fullword ascii
    $file_persist = ".system" fullword ascii
    $file_cron = "sshids" fullword ascii
  condition:
    uint32(0) == 0x464c457f and filesize < 500KB and elf.type == elf.ET_DYN
    and $linkpro
    and 2 of ($hook*)
    and 2 of ($file*)
}

rule MAL_LinkPro_arpdiag_ELF_KO_Oct25 {
  meta:
    description = "Detects LinkPro LKM module"
    author = "CSIRT Synacktiv, Théo Letailleur"
    date = "2025-10-13"
    reference = "https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis"
    hash = "9fc55dd37ec38990bb27ea2bc18dff0bb2d16ad7aa562ab35a6b63453c397075"
  strings:
    $hook_udp6 = "hook_udp6_seq_show" fullword ascii
    $hook_udp4 = "hook_udp4_seq_show" fullword ascii
    $hook_tcp6 = "hook_tcp6_seq_show" fullword ascii
    $hook_tcp4 = "hook_tcp4_seq_show" fullword ascii
    $ftrace = "ftrace_thunk" fullword ascii
    $hide_entry = "hide_port_init" fullword ascii
    $hide_exit = "hide_port_exit" fullword ascii
  condition:
    uint32(0) == 0x464c457f and filesize < 2MB and elf.type == elf.ET_REL
    and $ftrace
    and 2 of ($hook*) 
    and 1 of ($hide*)
}

rule MAL_vGet_ELF_Downloader_Rust_Oct25 {
  meta:
    description = "Detects vGet Downloader, observed to load vShell"
    author = "CSIRT Synacktiv, Théo Letailleur"
    date = "2025-10-13"
    reference = "https://www.synacktiv.com/en/publications/linkpro-ebpf-rootkit-analysis"
    hash = "0da5a7d302ca5bc15341f9350a130ce46e18b7f06ca0ecf4a1c37b4029667dbb"
    hash = "caa4e64ff25466e482192d4b437bd397159e4c7e22990751d2a4fc18a6d95ee2"
  strings:
    $hc_rust = "RUST_BACKTRACE"  fullword ascii
    $hc_symlink = "/tmp/.del"  fullword ascii
    $hc_proxy = "Proxy-Authorization:"  fullword ascii
    $lc_crypto_chacha = "expand 32-byte k"  fullword ascii
    $lc_pdfuser = "cosmanking"  fullword ascii
    $lc_local = "127.0.0.1" fullword ascii
  condition:
    uint32(0) == 0x464c457f and filesize > 500KB and filesize < 3MB 
    and elf.type == elf.ET_DYN 
    and all of ($hc*)
    and 1 of ($lc*)
}
 