#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

setmousedelay,2 

F5::
	$stop := 1
    ; Change these values for your set up. For example mainStat=20 is taking 20ms to spend your points in mainStat. Depending on your in game latency you may have to adjust movement speed if it does not spend the points in movement speed. only works with 1920x1080


    ;variables for paragon stats
    mainStat := 30 
    vitality := 0 
    maxSpeed := 10
    maxEssence := 5



    ;Core tab settings
    coreTabX := 609 ;Core Tab X coordinate
    coreTabY := 105 ;Core Y coordinate
    coreResetX := 971 ;Core Reset button X coordinate
    coreResetY := 727 ;Core Reset button Y coordinate
    vitX := 1277 ;Vit button X coordinate
    vitY := 425 ;Vit button Y coordinate
    dexX := 1277 ;Dex button X coordinate
    dexY := 335 ;Dex button Y coordinate
    acceptX := 816 ;Accept button X coordinate
    acceptY := 821 ;Accept button Y coordinate


    ;support for speed/essence positions

    movSpeedX = 1273
    movSpeedY = 516

    maxEssX = 1272
    maxEssY = 612

    ;Paragon script
    ControlSend, ,p, Diablo III
	Sleep 100
        
    
    MouseClick, Left, coreTabX, coreTabY ;click core tab
	
	Sleep 100
    
    MouseClick, Left, coreResetX, coreResetY ;click core reset
	
	Sleep 100
    
    Sendinput, {Ctrl Down}
	Sleep 100
    Loop, %vitality% ;set the vitality
    {
        
        MouseClick, Left, vitX, vitY
    }

    Loop, %maxSpeed% ;set mov speed
    {
        MouseClick, Left, movSpeedX, movSpeedY
    }

    Loop, %maxEssence% ;set max essence
    {
        MouseClick, Left, maxEssX, maxEssY
    }

    Loop, %mainStat% ;set the main stat
    {
        
        MouseClick, Left, dexX, dexY
    }
	Sleep 100
    Sendinput, {Ctrl Up}
	Sleep 100
    MouseClick, Left, acceptX, acceptY ;click accept
return

F6::
	$stop := 1
    ; Change these values for your set up. For example mainStat=20 is taking 20ms to spend your points in mainStat. Depending on your in game latency you may have to adjust movement speed if it does not spend the points in movement speed. only works with 1920x1080


    ;variables for paragon stats
    mainStat := 0 
    vitality := 30 
    maxSpeed := 10
    maxEssence := 5



    ;Core tab settings
    coreTabX := 609 ;Core Tab X coordinate
    coreTabY := 105 ;Core Y coordinate
    coreResetX := 971 ;Core Reset button X coordinate
    coreResetY := 727 ;Core Reset button Y coordinate
    vitX := 1277 ;Vit button X coordinate
    vitY := 425 ;Vit button Y coordinate
    dexX := 1277 ;Dex button X coordinate
    dexY := 335 ;Dex button Y coordinate
    acceptX := 816 ;Accept button X coordinate
    acceptY := 821 ;Accept button Y coordinate


    ;support for speed/essence positions

    movSpeedX = 1273
    movSpeedY = 516

    maxEssX = 1272
    maxEssY = 612

    ;Paragon script
    ControlSend, ,p, Diablo III
        
    
    MouseClick, Left, coreTabX, coreTabY ;click core tab
	
	Sleep 100
    
    MouseClick, Left, coreResetX, coreResetY ;click core reset
	
	Sleep 100
    
    Sendinput, {Ctrl Down}
	Sleep 100

    Loop, %maxSpeed% ;set mov speed
    {
        MouseClick, Left, movSpeedX, movSpeedY
    }

    Loop, %maxEssence% ;set max essence
    {
        MouseClick, Left, maxEssX, maxEssY
    }

    Loop, %vitality% ;set the vitality
    {
        
        MouseClick, Left, vitX, vitY
    }

    Loop, %mainStat% ;set the main stat
    {
        
        MouseClick, Left, dexX, dexY
    }
	Sleep 100
    Sendinput, {Ctrl Up}
	Sleep 100
    MouseClick, Left, acceptX, acceptY ;click accept
return



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


F2::

$stop := 0


Loop, 1

{
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
	sleep 100
	send {1}
	sleep 100
	send {3 down}
 	Loop, 5
    	{
        	sleep 100
		if ($stop)
		{
			send {3 up}
			return
		}
    	}
	send {3 up}
	sleep 100

	SendKey:
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
	send {3 up}
	;sleep 56 
	send {RButton down}
	sleep 400 
	send {RButton up}
if ($stop)
{

return

}

}

F4:: $stop := 1



