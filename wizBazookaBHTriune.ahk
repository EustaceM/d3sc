#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

setmousedelay,2 


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

		$stop := 0

		send {3 down}
 		Loop, 6
    		{
        		sleep 100
			if ($stop)
			{
				send {3 up}
				return
			}
    		}
		send {3 up}
		send {4}
		sleep (100) 
		send {4}
 		Loop, 5
    		{
        		sleep 100
			if ($stop)
			{
				return
			}
    		}

		send {1 down}
		sleep 100
		send {1 up}	
		

		send {3 down}
 		Loop, 8
    		{
        		sleep 100
			if ($stop)
			{
				send {3 up}
				return
			}
    		}
		send {3 up}
		SoundPlay, gongL.wav

 		Loop, 17
    		{
        		sleep 100
			if ($stop)
			{
				return
			}
    		}


	Loop, 1

	{
		send {LShift down}
		send {2 down}
		sleep 100
		send {2 up}
		send {3 down}


 		Loop, 8
    		{
        		sleep 100
			if ($stop)
			{
				send {3 up}
				return
			}
    		}
		send {3 up}
		sleep 133-46


		send {RButton down}
		sleep (120+46) 

		send {LButton down}
		sleep 100
		send {RButton up}
		sleep 200
		send {LButton up}
		send {LShift up}
		if ($stop)
		{
			return
		}
	}

return


F2::

$ocu := 1
return

F3::

$ocu := 0
return


F4:: $stop := 1



