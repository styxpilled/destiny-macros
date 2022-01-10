#noEnv
#singleInstance FORCE
#keyHistory 0
listLines OFF
sendMode INPUT

^6::
SetTimer shoot, 3500
return

^7::
SetTimer shoot, OFF
return

^8::
ExitApp

shoot() {
    mouseMove, 0, - A_ScreenHeight, 1, R
    sleep 100
    mouseMove, 0 , 100, 1, R
    sleep 500
    mouseMove, 0, -500, 5, R

    click
    
    send, s
} 