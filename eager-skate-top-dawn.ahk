#noEnv
#singleInstance FORCE
#keyHistory 0
listLines OFF
sendMode INPUT

JUMPBIND := "Space" ; Default Jump bind
ICARUSDASHBIND := "x" ; Default Icarus Dash bind
return
; when pressed B or shift + B, skate()
B::skate()
return

+B::skate()
return

^8::
exitApp

skate() {
    global JUMPBIND
    global ICARUSDASHBIND
    send {%JUMPBIND%}
    send {%JUMPBIND% DOWN}
    sleep 200
    send {%JUMPBIND% UP}

    send {3}
    sleep 450
    send {click LEFT}

    sleep 400
    send {1}

    send {%JUMPBIND%}
    send {%JUMPBIND% DOWN}
    sleep 100
    send {%JUMPBIND% UP}
    send {%ICARUSDASHBIND%}
}