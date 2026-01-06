rule apt_Lazarus_MacOs_ClickFake_Interview_bash_installer {
    meta:
        id = "0f59e291-ac25-4e9a-89b8-54ea7015f769"
        intrusion_set = "Lazarus"
        malware = "GolangGhost"
        description = "Detects MacOs installer used in ClickFake Interview campaign"
        source = "Sekoia.io"
        creation_date = "2025-03-19"
        classification = "TLP:GREEN"
        hash = "2805e6efa8877f5707d8e6b29610894f"
    strings:
        $s0 = "#!/bin/bash"
    	$s1 = "PLISST_FILE=~/Library/"
        $s2 = "ZIP_URL=$ZIP_"
        $s3 = "chmod +x"
    condition:
    	filesize < 5KB and
        $s0 at 0 and @s1 < @s2 and @s2 < @s3
}

rule apt_Lazarus_ClickFake_Interview_FrostyFerret {
    meta:
        id = "12f06933-b0f0-438f-a139-6d0b25ff32e1"
        malware = "FrostyFerret"
        intrusion_set = "Lazarus"
        description = "Detects FrostyFerret based on strings"
        source = "Sekoia.io"
        creation_date = "2025-03-19"
        classification = "TLP:GREEN"
        hash = "69bf17d2fb810df08180f0d5b7ce4537"
    strings:
        $ = "content.dropboxapi.com/2/files/upload"
        $ = "Failed to get public IP address."
        $ = "Failed to convert password to data"
        $ = "The password you entered is incorrect. Please try again."
        $ = "Please enter your password to proceed."
    condition:
        uint32be(0) == 0xcafebabe and
        3 of them
}

rule apt_Lazarus_ClickFake_JavaScript {
    meta:
        id = "9037b056-c6a9-4089-a30c-377e7461e83e"
        version = "1.0"
        intrusion_set = "Lazarus"
	malware = "GolangGhost"
        description = "Detects ReactJS code used in ClickFake campaign"
        source = "Sekoia.io"
        creation_date = "2025-03-20"
        classification = "TLP:GREEN"
        hash = "d583a05680e83b5b4c7ac2d21920384b"
    strings:
        $ = "/invite/${"
        $ = "inviteUUID" nocase
        $ = "The content is copied to the clipboard"
        $ = "react.element"
        $ = "Interview" nocase
    condition:
        all of them and filesize < 5MB
}

rule apt_Lazarus_ClickFake_ZIP_with_GolangGhost {
    meta:
        id = "2cfea7bc-ea80-4bf7-b647-364e01a631ff"
        version = "1.0"
        intrusion_set = "Lazarus"
	malware = "GolangGhost"
        description = "Detects Lazarus's ZIP file with Go Stealer"
        source = "Sekoia.io"
        creation_date = "2025-03-20"
        classification = "TLP:GREEN"
        hash = "00b7488d87972e9812e94c69385f6839"
    strings:
        $ = { (9A 18| 84 17) 00 00 [4-12] 2F 63 68 72 6F 6D 65 5F 63 6F 6F 6B 69 65 5F 64 61 72 77 69 6E 2E 67 6F} 
	 $ = { (BF 05 | 36 06) 00 00 [4-12] 2F 62 61 73 69 63 2E 67 }
        $ = { (08 24 | 95 22 ) 00 00 [4-12] 2F 63 68 72 6F 6D 65 5F 63 6F 6F 6B 69 65 5F 6F 74 68 65 72 2E 67 6F }
    condition:
        uint32be(0) == 0x504b0304 and
        1 of them
}

rule apt_Lazarus_ClickFake_NodeVBS_Launcher {
    meta:
        id = "7c869b72-21ff-463c-b12e-cbd629ca8cc6"
        version = "1.0"
        intrusion_set = "Lazarus"
	  malware = "GolangGhost"
        description = "Detects Node VBS launcher used in the ClickFake campaign"
        source = "Sekoia.io"
        creation_date = "2025-03-20"
        classification = "TLP:GREEN"
        hash = "ce37c75d35c82f933e14b00f32c25373"
    strings:
        $s = "objShell.Run \"cmd /c node "
    condition:
        uint32be(0) == 0x53657420 and 
        $s in (filesize-50..filesize)
}

rule apt_Lazarus_ClickFake_Go_Backdoor_strings {
    meta:
        id = "77f85517-2446-4251-a684-10888312f190"
        version = "1.0"
	malware = "GolangGhost"
        intrusion_set = "Lazarus"
        description = "Detect's Lazarus Go interpreted Backdoor"
        source = "Sekoia.io"
        creation_date = "2025-03-20"
        classification = "TLP:GREEN"
        hash = "341ba2e57a0f108be75a1515d32a008a"
    strings:
        $ = "func processInfo("
        $ = "func processUpload("
        $ = "func processWait("
        $ = "func processOsShell("
        $ = "func StartMainLoop("
    condition:
        uint32be(0) == 0x7061636b and
        3 of them
}

rule apt_Lazarus_ClickFake_GolangGhost_Compiled {
    meta:
        id = "f0d1d82e-7cb5-4324-8f11-310d0dc26e48"
        version = "1.0"
	malware = "GolangGhost"
        intrusion_set = "Lazarus"
        description = "Detects Lazarus compiled Go Backdoor"
        source = "Sekoia.io"
        creation_date = "2025-03-20"
        classification = "TLP:GREEN"
    strings:
        $ = "bits-project/bits/util"
        $ = "unknown auto mode"
        $ = "%s.tar.gz"
        $ = "AutoModeChromeGather"
        $ = "UUID: %s, URL: %s"
    condition:
    	(
			(uint16(0) == 0x5a4d) or 
			(uint32(0)==0x464c457f) or 
			(uint32(0) == 0xfeedfacf) or 
			(uint32(0) == 0xcffaedfe) or 
			(uint32(0) == 0xfeedface) or 
			(uint32(0) == 0xcefaedfe) 
		) and 4 of them
}

rule apt_Lazarus_ClickFake_NodeJS_Downloader {
    meta:
        id = "c74b47ef-7105-4382-b4af-80652ad4047d"
        version = "1.0"
        intrusion_set = "Lazarus"
	malware = "GolangGhost"
        description = "Detects the NodeJS Downloader"
        source = "Sekoia.io"
        creation_date = "2025-03-20"
        classification = "TLP:GREEN"
        hash = "7978d40bd5ca56021f6c250f564e7e27"
    strings:
        $ = "spawn('tar', ['-xf"
        $ = "/t', 'REG_SZ"
        $ = "curl/"
    condition:
        uint32be(0) == 0x636f6e73 and
        filesize < 10KB and
        all of them
}
