

rule Dropper_DeepfakeGuard_NodeLoader_Generic
{
    meta:
        description = "DeepfakeGuard Dropper: Bash launchers for Linux/macOS and Batch for Windows featuring Base64 payloads to load a malicious JS file via Node.js"
        author      = "Stormshield"
        hashes      = "cd20f43f985f7df7ba3ad9b08e5bdbecc20aaa4d8f60dc09e8468bdd1b249fe6, 249626244f23928c75e6c382da62278ed1d4e012a0c0f62beafefc1e4d7c5baa"
        created     = "2026-11-06"
        modified    = "2026-11-06"
        score       = 100
        reference   = "Static analysis of verify_m and verify_w"
        tlp         = "TLP:CLEAR"

    strings:
        // -------------------
        // Telemetry artifacts
        // -------------------
        $ep1 = "guard-launcher-result" ascii
        $ep2 = "guard-install-log" ascii
        $ep3 = "guard-install-progress" ascii
        $hdr = "X-Guard-Platform" ascii

        // --------------- //
        // Kit identifiers
        // --------------- //
        $nm1 = "deepfake_guard.launcher.status" ascii
        $nm2 = "deepfake_guard_work" ascii
        $nm3 = "deepfake_guard.lock.d" ascii
        $nm4 = "deepfake_guard_run.sh" ascii
        $nm5 = "deepfake_guard.worker.lock" ascii
        $nm6 = "=== deepfake_guard install started ===" ascii

        // ----------------- //
        // Node.js artifacts
        // ----------------- //
        $js1 = "install_guard.js" ascii
        $js2 = "install_guard_alt.js" ascii
        $nd1 = "node-v20.18.1" ascii
        $nd2 = "GUARD_STORE_FALLBACK" ascii
        $nd3 = "GUARD_LOG_UPLOAD_URL" ascii

       // ------------------------------------------ //
        // Environment variables and execution states
        // ------------------------------------------ //
        $env1 = "NVDG_INSTALLER_DIR" ascii
        $env2 = "NVDG_LAUNCHER" ascii
        $env3 = "NVDG_DETACHED" ascii
        $env4 = "NVDG_HIDDEN" ascii
        $env5 = "NVDG_SELF" ascii

        $st1 = "payload_ready" ascii
        $st2 = "decode_failed" ascii
        $st3 = "payload_failed" ascii
        $st4 = "worker_timeout" ascii

        // ----------------------------------------------- //
        // Linux and macOS specific artifacts and commands
        // ----------------------------------------------- //
        $lx1 = "/var/tmp/.kdm." ascii
        $lx2 = "ANE compute driver sync" ascii
        $lx3 = "base64 -D 2>/dev/null || base64 -d" ascii
        $lx4 = "/var/tmp/upd_m" ascii
        $lx5 = "upda_m" ascii
        $lx6 = "nohup bash \"$0\"" ascii

        // --------------------------------------- //
        // Windows specific artifacts and commands
        // --------------------------------------- //
        $wn1 = "~kdm_" ascii
        $wn2 = "~nvdg_worker.vbs" ascii
        $wn3 = "NVIDIA kernel module staging helper" ascii
        $wn4 = ":Zone.Identifier" ascii nocase
        $wn5 = "Unblock-File" ascii nocase
        $wn6 = "upd_w.cmd" ascii
        $wn7 = "upda_w.cmd" ascii
        $wn8 = "set NVDG_HIDDEN=1" ascii
        $wn9 = "wscript //B" ascii nocase

        // ------------------------------------ //
        // cURL specific artifacts and commands
        // ------------------------------------ //
        $cu1 = "curl -sk -X POST -H \"Content-Type" ascii
        $cu2 = "curl -kfsSL --http1.1 -C -" ascii
        $cu3 = "--retry-all-errors" ascii

        // --------------------------------------- //
        // Base64 assembly and decoding structures
        // --------------------------------------- //

        // Base64 for "#!/bin/bash\n\nGUARD_DIR=\""
        $b64_lx = "IyEvYmluL2Jhc2gKCkdVQVJEX0RJUj0i" ascii
        // Base64 for "@echo off\r\n\r\nsetlocal EnableDelayedExpansion"
        $b64_wn = "QGVjaG8gb2ZmDQoNCnNldGxvY2FsIEVuYWJsZURlbGF5ZWRFeHBhbnNpb24N" ascii

        $b64_dg  = "deepfake_guard" base64
        $b64_gs  = "gamsterb.ink" base64
        $b64_ijs = "install_guard.js" base64

        // --------------------------------------- //
        // Base64 assembly and decoding structures
        // --------------------------------------- //
        $re_blob_lx = /\n_[0-9a-f]{6}="\$\{_[0-9a-f]{6}\}[A-Za-z0-9+\/=]{60,}"/
        $re_blob_wn = /\n>>"%_[0-9a-f]{6}%" echo [A-Za-z0-9+\/=]{40,}\r?\n/

        $dc_wn1 = "[Convert]::FromBase64String" ascii nocase
        $dc_wn2 = "WriteAllBytes" ascii nocase
        $dc_wn3 = "ReadAllText" ascii nocase

        // Base64 for "#!/bin/bash"
        $b64_sh  = "IyEvYmluL2Jhc2g" ascii
        // Base64 for "@echo off"
        $b64_bat = "QGVjaG8gb2Zm" ascii

    condition:
        filesize < 500KB and
        (
            // 1. TELEMETRY
            // Detects the loader's HTTP telemetry mechanism. Requires the platform identification header and at least two known telemetry endpoints.
            (
                $hdr and
                2 of ($ep*)
            )

            // 2. KIT IDENTIFIERS
            // Detects the loader using NVDG_ environment variables, Node.js scripts, and unique file naming conventions.
            or
            (
                2 of ($nm*) and
                1 of ($js*) and
                2 of ($env*)
            )

            // 3. PORTABLE NODE.JS
            // Detects the Node.js installation mechanism using a specific portable version, config scripts, and cURL commands.
            or
            (
                $nd1 and
                2 of ($nd2, $nd3, $js1, $js2) and
                1 of ($cu*)
            )

            // 4. LAUNCHER STATES
            // Detects launcher-worker communication via execution states, NVDG_ variables, Node.js scripts, and cURL commands.
            or
            (
                3 of ($st*) and
                2 of ($env*) and
                1 of ($js*) and
                1 of ($cu*)
            )

            // 5. LINUX / macOS LAUNCHER
            // Detects the Bash launcher using temporary files, Base64 decoding, background commands, and kit identifiers.
            or
            (
                2 of ($lx*) and
                1 of ($nm*, $js*, $env*)
            )

            // 6. WINDOWS LAUNCHER
            // Detects the Batch launcher using temporary files, worker scripts, Windows indicators, and kit identifiers.
            or
            (
                2 of ($wn*) and
                1 of ($nm*, $js*, $env*)
            )

            // 7. WINDOWS MOTW REMOVAL AND HIDDEN EXECUTION
            // Detects Windows Mark-of-the-Web removal and hidden worker execution via PowerShell, WScript, and NVDG_ variables.
            or
            (
                $wn4 and
                $wn5 and
                $wn9 and
                1 of ($env*)
            )

            // 8. EMBEDDED BASE64 PAYLOAD PREFIX
            // Detects embedded stage 2 payloads via Bash/Batch Base64 prefixes, execution states, NVDG_ variables, or cURL commands.
            or
            (
                1 of ($b64_lx, $b64_wn) and
                (
                    1 of ($st*) or
                    1 of ($env*) or
                    1 of ($cu*)
                )
            )

            // 9. EMBEDDED BASE64 CONTENT
            // Detects encoded payload strings using Base64 identifiers combined with execution states or NVDG_ variables.
            or
            (
                2 of ($b64_dg, $b64_gs, $b64_ijs) and
                1 of ($env*, $st*)
            )

            // 10. LINUX / macOS BASE64 ASSEMBLY
            // Detects Bash payload assembly via Base64 block concatenation, Linux/macOS decoding commands, and script prefixes.
            or
            (
                #re_blob_lx > 20 and
                $lx3 and
                $b64_sh
            )

            // 11. WINDOWS BASE64 ASSEMBLY
            // Detects Windows payload assembly via Base64 block writes, PowerShell decoding APIs, and Batch script prefixes.
            or
            (
                #re_blob_wn > 20 and
                all of ($dc_wn*) and
                $b64_bat
            )
        )
}