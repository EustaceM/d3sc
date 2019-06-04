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


F5::
send 1
send 4
return


F1::

$stop := 0


	;send {4}
	;sleep (100) 
	;send {4}
 	;send {3 down}
 	;Loop, 6
    	;{
        ;	sleep 100
	;	if ($stop)
	;	{
	;		send {3 up}
	;		return
	;	}
    	;}
	;send {3 up}
	send {1 down}
	sleep 100
	send {1 up}
	send {3 down}

 	Loop, 12
    	{
        	sleep 100
		if ($stop)
		{
			send {3 up}
			return
		}
    	}


	;sleep 56 
	send {3 up}


Loop, 1

{
	send {LShift down}
	send {2 down}
	sleep 100
	send {2 up}
	send {3 down}

	;sleep 1033
	;Loop, 7

 	Loop, 8
    	{
        	sleep 100
		if ($stop)
		{
			send {3 up}
			return
		}
    	}
	;sleep 180
	sleep 133-46
	;sleep 97+20+50
	send {3 up}
	send {RButton down}
	sleep (120+46) 
	;send {1}
	;sleep 50
	send {RButton up}
	send {LButton down}
	;send {MButton down}
	sleep 100
	send {LButton up}
	;sleep 200
	;send {MButton up}
	send {LShift up}
if ($stop)
{

return

}
}


return



F2::

$stop := 0


	send {4}
	sleep (100) 
	send {4}
 	;send {3 down}
 	Loop, 7
    	{
        	sleep 100
		if ($stop)
		{
			send {3 up}
			return
		}
    	}
	;send {3 up}
	send {1 down}
	sleep 100
	send {1 up}
	send {3 down}

 	Loop, 12
    	{
        	sleep 100
		if ($stop)
		{
			send {3 up}
			return
		}
    	}


	;sleep 56 
	send {3 up}

Loop, 1

{
	send {2 down}
	sleep 100
	send {2 up}
	send {3 down}

 	Loop, 10
    	{
        	sleep 100
		if ($stop)
		{
			send {3 up}
			return
		}
    	}
	;sleep 56 
	send {3 up}
	send {RButton down}
	sleep (333+56) 
	send {RButton up}
}
return



F4:: $stop := 1



