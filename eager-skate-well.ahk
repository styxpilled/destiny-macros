#noEnv
#singleInstance force
#keyHistory 0
listLines off
sendMode input

; This macro is actually quite inconsistent. Feel free to change it.

jumpBind := "Space" ; Default Jump bind
wellBind := "f" ; Default Well of Radiance bind
return

B::skate()
return

^8::
ExitApp

skate() {
    global jumpBind
    global wellBind

    ; Take out the sword.
    Send, {3}
    ; Wait for the animation to finish.
    Sleep 400
    ; Perform a heavy attack.
    Send {Click Down Right}
    Send {Click Up Right}
    ; Wait for the animation to finish.
    Sleep 125
    ; Perform the jump + well combo.
    Send, {%jumpBind%}
    Sleep 25
    Send, {%wellBind%}
    ; Switch back to main weapon.
    Sleep 400
    Send {1}
}
