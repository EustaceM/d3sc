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

if(GetKeyState("LButton","P"))

{
;Send 2

Send 4

Sleep 100
}

if(GetKeyState("RButton","P"))

{
;Send 2

Send 4

Sleep 100
}



if ($stop)

{

return

}

}

F12:: $stop := 1