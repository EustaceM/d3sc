#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, Diablo III
$PgUp::
	$stop := 1
 While GetKeyState("PgUp", "p") { ; While it is held down
        MouseClick Left
        Sleep 50
    }

return

#IfWinActive, Diablo III
$PgDn::
	$stop := 1
 While GetKeyState("PgDn", "p") { ; While it is held down
        MouseClick Right
        Sleep 50
    }
return

$~t::
$stop := 1
return

$~y::
$stop := 1
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

;3B6894

Loop,

{
	;PixelGetColor, c1, 1679, 8
	;PixelGetColor, c2, 1679, 18
	;MsgBox %c1% %c2%.
	;if (c1=0xF5F5F5 and c2=0xF5F5F5)
	;{
	;	$state := 1
	;}
	;else if (c1=0x08080B and c2=0x0A0A0D) 
	;{
	;	$state := 1
	;}
	;else 
	;{
	;	$state := 0
	;}


	Loop, 10

	{
		Sleep 50

		Send 4

		Sleep 50


		if ($stop)

		{

			return

		}

		}
	}


F12:: reload


