import "dotnet"

/*
These rules were formatted using the YARA-X formatter.
*/

rule uyghureditpp_trojan_guid {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  condition:
    dotnet.guids[0] == "3637f329-3508-417a-b9a0-c122295d4a2a"
}

rule uyghureditpp_trojan_resource {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  condition:
    for any i in (0..dotnet.number_of_classes - 1): (
      for any j in (0..dotnet.classes[i].number_of_methods): (
        dotnet.classes[i].fullname == "UyghurEditPP.Properties.Resources"
        and dotnet.classes[i].methods[j].name == "get_GheyretDetector"
      )
    )
}

rule uyghureditpp_trojan_mainform_methods {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  condition:
    for any i in (0..dotnet.number_of_classes - 1): (
      dotnet.classes[i].fullname == "UyghurEditPP.MainForm"
      and
      for any j in (0..dotnet.classes[i].number_of_methods): (
        dotnet.classes[i].methods[j].name == "MainFormLoad"
      )
      and
      for any j in (0..dotnet.classes[i].number_of_methods): (
        dotnet.classes[i].methods[j].name == "releaseFile"
      )
      and
      for any j in (0..dotnet.classes[i].number_of_methods): (
        dotnet.classes[i].methods[j].name == "AddUpdater"
      )
    )
}

rule gheyret_backdoor_methods {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  strings:
    $methods1  = "GetHardDiskID"
    $methods2  = "GetLocalIP"
    $methods3  = "GetWanIP"
    $methods4  = "GetMethod"
    $methods5  = "GetHostName"
    $methods6  = "PostGetResponse"
    $methods7  = "GetMd5HashString"
    $methods8  = "GetOSInfo"
    $methods9  = "GetRemoteInfo"
    $methods10 = "GetHardDiskID"
    $methods11 = "PostData"
    $methods12 = "PostAndProcessResponse"
    $methods13 = "PostGetResponse"
    $methods14 = "SayHello"

  condition:
    10 of them
}

rule gheyret_backdoor_commands {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  strings:
    $commands1  = "CMDTAR"
    $commands2  = "ONLINETAR"
    $commands3  = "DOWNTAR"
    $commands4  = "UPTAR"
    $commands5  = "postTAR"
    $commands6  = "DOWNTAR_ERR"
    $commands7  = "CMDTAR_RES"
    $commands8  = "ONLINETAR_RES"
    $commands9  = "DOWNTAR_RES"
    $commands10 = "UPTAR_RES"

  condition:
    3 of them
}

rule gheyret_backdoor_responses {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  strings:
    $responses1  = "GHEYRETO|" ascii wide
    $responses2  = "GHEYRETOR" ascii wide
    $responses3  = "GHEYRETC" ascii wide
    $responses4  = "GHEYRETCR" ascii wide
    $responses5  = "GHEYRETU" ascii wide
    $responses6  = "GHEYRETUR" ascii wide
    $responses7  = "GHEYRETD" ascii wide
    $responses8  = "GHEYRETDR" ascii wide
    $responses9  = "GHEYRETDERR" ascii wide
    $responses10 = "GHEYRETO" ascii wide

  condition:
    3 of them
}

rule gheyret_backdoor_logs {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  strings:
    $debug1 = "Update Data Is Empty!" ascii wide
    $debug2 = "UpdateCommand Packet Error!" ascii wide
    $debug3 = "CMD Params Error!" ascii wide
    $debug4 = "Up Params Error!" ascii wide
    $debug5 = "does not exists!" ascii wide
    $debug6 = "Down Params Error!" ascii wide

  condition:
    3 of them
}

rule gheyret_backdoor_c2 {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  strings:
    $c21 = "tengri.ooguy.com" ascii wide
    $c22 = "anar.gleeze.com" ascii wide
    $c23 = "wanar.gleeze.com" ascii wide
    $c24 = "/gheyret/Update" ascii wide

  condition:
    any of them
}

rule gheyret_backdoor_mutex {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  strings:
    $mutex1 = "Global\\gheyretUpdater" ascii wide

  condition:
    any of them
}

rule gheyret_backdoor_campaign_codes {
  meta:
    author = "Matt Brooks <matt@citizenlab.ca>"

  strings:
    $campaigncode1 = "UyghurEditPP250310" ascii wide
    $campaigncode2 = "UyghurEditPP241210" ascii wide

  condition:
    any of them
}