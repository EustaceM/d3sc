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
$shift := 0
$shiftCount := 0

Loop, 
{
		send {3}
		sleep (100) 
		send {3}
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

		SoundPlay, gongL.wav

 		Loop, 18
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

 		Loop, 8
    		{
        		sleep 100
			if ($stop)
			{
				
				return
			}
    		}

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
	Loop, 19
	{
		;send 1
		Loop, 10
		{
			sleep 100
			if ($stop)
			{
				return
			}
		}
	}
	;send {Numpad2}
	if ($ocu)
	{
		send {RButton down}
	 	Loop, 28 ;17 ;26
	    	{
	        	sleep 100
			send {1}
			if ($stop)
			{
				send {RButton up}
				return
			}
	    	}
		send {RButton up}
		sleep 36

		send {3}
		sleep (100) 
		send {3}
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

 		Loop, 7
    		{
        		sleep 100
			if ($stop)
			{

				return
			}
    		}
		sleep 100
		send {2 down}
		sleep 100
		send {2 up}

 		Loop, 8
    		{
        		sleep 100
			if ($stop)
			{
				return
			}
    		}
		sleep 133-46

		;send {RButton down}
		;sleep (120+46) 
		;send {RButton up}
		;sleep 300
		send {RButton down}
	 	Loop, 9 
	    	{
	        	sleep 100
			if ($stop)
			{
				send {RButton up}
				return
			}
	    	}
		sleep (120+46) 
		send {RButton up}
		sleep 11
	
	}
	else {
		;return
		$cycleCount := (52 + 11)
		if ($shift = 1)
		{
			$cycleCount := $cycleCount + 15
			$shift := 0
			$shiftCount:=$shiftCount+1
		}
		else if ($shiftCount > 0)
		{	
			$cycleCount := $cycleCount - (15 * $shiftCount)
			$shiftCount :=0
		}
		send {RButton down}
	 	Loop, %$cycleCount%
	    	{
	        	sleep 100
			send {1}
			if ($stop)
			{
				send {RButton up}
				return
			}
	    	}
		send {RButton up}


		sleep 100
	}
	;$ocu := 0
}

return


F2::

$ocu := 1
return

F3::

$ocu := 0
return


F4:: $stop := 1
return

F5:: $shift := 1
return

