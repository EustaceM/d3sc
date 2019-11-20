#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F11::

$stop := 0

Loop,

{

if(GetKeyState("RButton","P"))

{

SendPlay {a down}
SendPlay {f down}

Sleep 50

SendPlay {a up}
SendPlay {f up}
}

if ($stop)

{

return

}
Sleep 50

}

return

F12:: $stop := 1


