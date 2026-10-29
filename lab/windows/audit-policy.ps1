# Windows audit settings the detections rely on. Run as Administrator.
# 4688: process creation
auditpol /set /subcategory:"Process Creation" /success:enable
# 4624/4625: logons, successful and failed
auditpol /set /subcategory:"Logon" /success:enable /failure:enable
# 4698: scheduled task created
auditpol /set /subcategory:"Other Object Access Events" /success:enable
# 4688 with the full command line
$a = "HKLM:\Software\Microsoft\Windows\CurrentVersion"
$p = "$a\Policies\System\Audit"
New-Item $p -Force | Out-Null
Set-ItemProperty $p ProcessCreationIncludeCmdLine_Enabled 1
# 4104: PowerShell script block logging
$b = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell"
New-Item "$b\ScriptBlockLogging" -Force | Out-Null
Set-ItemProperty "$b\ScriptBlockLogging" EnableScriptBlockLogging 1
