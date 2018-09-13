F11::

$stop := 0

Loop,

{

if(GetKeyState("LButton","P"))

{

KeyWait, LButton, U

}

else

freq:=300

Send 4

Sleep %freq%

Send 4

Sleep %freq%

Send 4

Sleep %freq%

Sleep 4000

if ($stop)

{

return

}

}

F12:: $stop := 1