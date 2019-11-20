#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$start := 0

$offset :=1

#If ($start)
RButton::
if ($offset=1)
{
    $offsetP:=0
    SendPlay {a down}
    Sleep 100	
    $offset:=2
}
else if ($offset=2)
{
    $offsetP:=0
    SendPlay {f down}
    Sleep 100	
    $offset:=1
}
Sleep 50
return


#If
F11:: 
$start := 1
return

#If
F12:: 
$start := ""
return