#noEnv
#singleInstance FORCE
#keyHistory 0
listLines OFF
sendMode INPUT

; 

Alt & `::
SetTimer click2000 off
SetTimer clickFast off
SetTimer dismantle off
return

Alt & 1::
SetTimer click2000 2000
return

Alt & 2::
SetTimer clickFast 100
return

Alt & 3::
SetTimer dismantle 2000
return

click2000() {
     click down
     sleep 2000
     click up
}

clickFast() {
     click
}

dismantle() {
     send {f down}
     sleep 2000
     send {f up}
}