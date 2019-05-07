#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, Diablo III
$PgUp::
 While GetKeyState("PgUp", "p") { ; While it is held down
        MouseClick Left
        Sleep 50
    }

return

#IfWinActive, Diablo III
$PgDn::
 While GetKeyState("PgDn", "p") { ; While it is held down
        MouseClick Right
        Sleep 50
    }
return


F11::

$stop := 0

Loop,

{

if(GetKeyState("MButton","P"))

{
;Send 3
;Sleep 50
Send 4

Sleep 50
}

if(GetKeyState("RButton","P"))

{
;Send 3


Send 4

Sleep 50
}

if ($stop)

{

return

}
Sleep 50

}

return

F12:: $stop := 1


