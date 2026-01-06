import "pe"

rule hlpdrv_sys_driver_malware
{
    meta:
        author = "GuidePoint Research and Intelligence Team"
        date = "2025-08-05"
        family = "BYOVD / hlpdrv.sys"
        description = "Detects malicious hlpdrv.sys driver using PE layout, imports, and strings"
        sha256 = "bd1f381e5a3db22e88776b7873d4d2835e9a1ec620571d2b1da0c58f81c84a56" 

    strings:
        $filename = "hlpdrv.sys" ascii nocase
        $svc = "HlpDrv" wide ascii
        $device = "\\Device\\KMHLPDRV" wide ascii
        $link = "\\DosDevices\\KMHLPDRV" wide ascii
        $reg = "SYSTEM\\CurrentControlSet\\Services\\HlpDrv" wide
        $pdb = "hlpdrv.pdb" ascii 

    condition:
        // Validate PE file and size
        uint16(0) == 0x5A4D and
        pe.is_pe and
        filesize < 100KB and 

        // Section layout checks
        pe.number_of_sections == 6 and
        pe.sections[0].name == ".text" and    
        pe.sections[1].name == ".rdata" and   
        pe.sections[2].name == ".data" and  
        pe.sections[3].name == ".pdata" and  
        pe.sections[4].name == "INIT" and 
        pe.sections[5].name == ".reloc" and   

        // Require at least 7 of 9 imports
        (7 of (
            pe.imports("ntoskrnl.exe", "ZwSetSecurityObject"),
            pe.imports("ntoskrnl.exe", "ZwTerminateProcess"),
            pe.imports("ntoskrnl.exe", "RtlCreateSecurityDescription"),
            pe.imports("ntoskrnl.exe", "RtlSetDaclSecurityDescription"),
            pe.imports("ntoskrnl.exe", "IoCreateSymbolicLink"),
            pe.imports("ntoskrnl.exe", "IoDeleteDevice"),
            pe.imports("ntoskrnl.exe", "IoCreateDevice"),
            pe.imports("ntoskrnl.exe", "PsProcessType"),
            pe.imports("ntoskrnl.exe", "PsLookupProcessByProcessId")
        )) and

        // Require at least 3 unique artifact strings
        3 of ($filename, $svc, $device, $link, $reg, $pdb)
}
