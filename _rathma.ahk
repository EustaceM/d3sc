F11::

$stop := 0

Loop,

{

;if(GetKeyState("LButton","P"))

;{

;KeyWait, LButton, U

;}

;else

if(GetKeyState("LButton","P"))

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