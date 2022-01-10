#noEnv
#singleInstance FORCE
#keyHistory 0
listLines OFF
sendMode INPUT

JUMPBIND := "Space" ; Default Jump bind
SHATTERDIVEBIND := "x" ; Default Icarus Dash bind
return

B::skate()
return

^8::
ExitApp

skate() {
    global JUMPBIND
    global SHATTERDIVEBIND

    ; Take out the sword.
    send, {3}
    ; Wait for the animation to finish.
    sleep 400
    ; Perform a heavy attack.
    send {click RIGHT DOWN}
    send {click RIGHT UP}
    ; Perform the jump + shatterdive combo.
    sleep 75
    send, {%JUMPBIND%}
    sleep 50
    send, {%SHATTERDIVEBIND%}
    ; Switch back to main weapon.
    sleep 200
    send {1}
}
