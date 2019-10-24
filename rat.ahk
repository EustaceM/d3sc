#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetControlDelay -1


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


F1::

	send {LShift down}
	send {LButton down}
	sleep 100
	Send 2
	send {LButton up}
	send {LShift up}
return



F11::

$stop := 0

Loop,

{
Sleep 50

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

}

F9::
	ControlClick, , Diablo III,, Middle , 1, NA x920 y507
	DllCall("Sleep","UInt",115)
	ControlClick,, Diablo III,, Middle , 1, NA x1000 y507
	DllCall("Sleep","UInt",115)

return


F12:: $stop := 1




