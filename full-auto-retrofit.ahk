#noEnv
#singleInstance FORCE
#keyHistory 0
listLines OFF
sendMode INPUT

; Not tested, taken from https://github.com/preco21/destiny-macros

Hotkey, ~*LButton, off
Hotkey, ~*LButton Up, off

Alt & RButton::
Hotkey, ~*LButton, Toggle
Hotkey, ~*LButton Up, Toggle
SetTimer, click_lbutton, off
return

~*LButton::
SetTimer, click_lbutton, 165

Random, hold, 73, 75
sleep hold
click Up
return

~*LButton Up::
SetTimer, click_lbutton, off
return

click_lbutton() {
     Random, hold, 73, 75
     Click Down
     Sleep, hold
     Click Up
}