rule G_Backdoor_WAVESHAPER_1 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
		date_created = "2025-11-03"
		date_modified = "2025-11-03"
		md5 = "c91725905b273e81e9cc6983a11c8d60"
		rev = 1
	strings:
		$str1 = "mozilla/4.0 (compatible; msie 8.0; windows nt 5.1; trident/4.0)"
		$str2 = "/tmp/.%s"
		$str3 = "grep \"Install Succeeded\" /var/log/install.log | awk '{print $1, $2}'"
		$str4 = "sysctl -n hw.model"
		$str5 = "sysctl -n machdep.cpu.brand_string"
		$str6 = "sw_vers --ProductVersion"
	condition:
		all of them
}

rule G_Backdoor_WAVESHAPER_2 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
		date_created = "2025-11-03"
		date_modified = "2025-11-03"
		md5 = "eb7635f4836c9e0aa4c315b18b051cb5"
		rev = 1
	strings:
		$str1 = "__Z10RunCommand"
		$str2 = "__Z11GenerateUID"
		$str3 = "__Z11GetResponse"
		$str4 = "__Z13WriteCallback"
		$str5 = "__Z14ProcessRequest"
		$str6 = "__Z14SaveAndExecute"
		$str7 = "__Z16MakeStatusString"
		$str8 = "__Z24GetCurrentExecutablePath"
		$str9 = "__Z7Execute"
	condition:
		all of them
}

rule G_Downloader_HYPERCALL_1 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
		date_created = "2025-10-24"
		date_modified = "2025-10-24"
		rev = 1
	strings:
		$go_build = "Go build ID:"
		$go_inf = "Go buildinf:"
		$lib1 = "/inject_mac/inject.go"
		$lib2 = "github.com/gorilla/websocket"
		$func1 = "t_loader/inject_mac.Inject"
		$func2 = "t_loader/common.rc4_decode"
		$c1 = { 48 BF 00 AC 23 FC 06 00 00 00 0F 1F 00 E8 ?? ?? ?? ?? 48 8B 94 24 ?? ?? ?? ?? 48 8B 32 48 8B 52 ?? 48 8B 76 ?? 48 89 CF 48 89 D9 48 89 C3 48 89 D0 FF D6 }
		$c2 = { 48 89 D6 48 F7 EA 48 01 DA 48 01 CA 48 C1 FA 1A 48 C1 FE 3F 48 29 F2 48 69 D2 00 E1 F5 05 48 29 D3 48 8D 04 19 }
	condition:
		(uint32(0) == 0xfeedface or uint32(0) == 0xcafebabe or uint32(0) == 0xbebafeca or uint32(0) == 0xcefaedfe or uint32(0) == 0xfeedfacf or uint32(0) == 0xcffaedfe) and all of ($go*) and any of ($lib*) and any of ($func*) and all of ($c*)
}

rule G_Backdoor_SILENCELIFT_1 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
		md5 = "4e4f2dfe143ba261fd8a18d1c4b58f2e"
		date_created = "2025/10/23"
		date_modified = "2025/10/28"
		rev = 2
	strings:
		$ss1 = "/usr/libexec/PlistBuddy -c \"print :IOConsoleUsers:0:CGSSessionScreenIsLocked\" /dev/stdin 2>/dev/null <<< \"$(ioreg -n Root -d1 -a)\"" ascii fullword
		$ss2 = "pkill -CONT -f" ascii fullword
		$ss3 = "pkill -STOP -f" ascii fullword
		$ss4 = "/Library/Caches/.Logs.db" ascii fullword
		$ss5 = "/Library/Caches/.evt_"
		$ss6 = "{\"bot_id\":\""
		$ss7 = "\", \"status\":"
		$ss8 = "/Library/Fonts/.analyzed" ascii fullword
	condition:
		all of them
}

rule G_APTFIN_Downloader_SUGARLOADER_1 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
		md5 = "3712793d3847dd0962361aa528fa124c"
		date_created = "2025/10/15"
		date_modified = "2025/10/15"
		rev = 1
	strings:
		$ss1 = "/Library/OSRecovery/com.apple.os.config"
		$ss2 = "/Library/Group Containers/OSRecovery"
		$ss4 = "_wolfssl_make_rng"
	condition:
		all of them
}

rule G_APTFIN_Downloader_SUGARLOADER_2 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
	strings:
		$m1 = "__mod_init_func\x00lko2\x00"
		$m2 = "__mod_term_func\x00lko2\x00"
		$m3 = "/usr/lib/libcurl.4.dylib"
	condition:
		(uint32(0) == 0xfeedface or uint32(0) == 0xfeedfacf or uint32(0) == 0xcefaedfe or uint32(0) == 0xcffaedfe or uint32(0) == 0xcafebabe) and (all of ($m1, $m2, $m3))
}

rule G_Datamine_DEEPBREATH_1 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
	strings:
		$sa1 = "-fakedel"
		$sa2 = "-autodat"
		$sa3 = "-datadel"
		$sa4 = "-extdata"
		$sa5 = "TccClickJack"
		$sb1 = "com.apple.TCC\" as alias"
		$sb2 = "/TCC.db\" as alias"
		$sc1 = "/group.com.apple.notes\") as alias"
		$sc2 = ".keepcoder.Telegram\")"
		$sc3 = "Support/Google/Chrome/\")"
		$sc4 = "Support/BraveSoftware/Brave-Browser/\")"
		$sc5 = "Support/Microsoft Edge/\")"
		$sc6 = "& \"/Local Extension Settings\""
		$sc7 = "& \"/Cookies\""
		$sc8 = "& \"/Login Data\""
		$sd1 = "\"cp -rf \" & quoted form of "
	condition:
		(uint32(0) == 0xfeedfacf) and 2 of ($sa*) and 2 of ($sb*) and 3 of ($sc*) and 1 of ($sd*)
}

rule G_Datamine_CHROMEPUSH_1 {
	meta:
		author = "Google Threat Intelligence Group (GTIG)"
		date_created = "2025-11-06"
		date_modified = "2025-11-06"
		rev = 1
	strings:
		$s1 = "%s/CA%02d%02d%02d%02d%02d%02d.dat"
		$s2 = "%s/tmpCA.dat"
		$s3 = "mouseStates"
		$s4 = "touch /Library/Caches/.evt_"
		$s5 = "cp -f"
		$s6 = "rm -rf"
		$s7 = "keylogs"
		$s8 = "%s/KL%02d%02d%02d%02d%02d%02d.dat"
		$s9 = "%s/tmpKL.dat"
		$s10 = "OK: Create data.js success"
	condition:
		(uint32(0) == 0xfeedface or uint32(0) == 0xcefaedfe or uint32(0) == 0xfeedfacf or uint32(0) == 0xcffaedfe or uint32(0) == 0xcafebabe or uint32(0) == 0xbebafeca or uint32(0) == 0xcafebabf or uint32(0) == 0xbfbafeca) and 8 of them
}