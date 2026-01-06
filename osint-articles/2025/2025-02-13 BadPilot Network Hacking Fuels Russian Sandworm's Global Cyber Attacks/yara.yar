rule injected_cred_logger_owa {  
    strings:  
        $owa = "<!-- OwaPa"   
        $jq = "jquery"   
        $ajax = ".ajax"   
        $keypress = ".keypress"   
        $which = "e.which == 13"   
        $encoding1 = "btoa"   
        $encoding2 = "unescape"   
        $encoding3 = "encodeURIComponent"  
        $m1 = "GET"   
        $m2 = "POST"   
    condition:   
        $owa and $jq and $ajax and $keypress and $which and (2 of ($encoding*)) and (1 of ($m*))   
}