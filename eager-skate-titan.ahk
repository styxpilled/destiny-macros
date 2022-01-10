#noEnv
#singleInstance FORCE
#keyHistory 0
listLines OFF
sendMode INPUT

JUMPBIND := "Space" ; Default Jump bind
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
    Send, {%JUMPBIND%}
    Sleep 25
    Send, {%JUMPBIND% DOWN}
    Sleep 200
    Send, {%JUMPBIND% UP}

    Send, {3}
    Sleep 500
    Send {click LEFT}

    Sleep 350
    Send, {1}