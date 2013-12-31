LCD_RS=11
LCD_E=10
LCD_D0=7
LCD_D1=0
LCD_D2=2
LCD_D3=3
LCD_D4=6 
LCD_D5=5
LCD_D6=4
LCD_D7=1

gpio mode $LCD_RS out
gpio mode $LCD_E out
gpio mode $LCD_D0 out
gpio mode $LCD_D1 out
gpio mode $LCD_D2 out
gpio mode $LCD_D3 out
gpio mode $LCD_D4 out
gpio mode $LCD_D5 out
gpio mode $LCD_D6 out
gpio mode $LCD_D7 out

gpio write $LCD_RS 0
gpio write $LCD_E 0
gpio write $LCD_D0 0
gpio write $LCD_D1 0
gpio write $LCD_D2 0
gpio write $LCD_D3 0
gpio write $LCD_D4 0
gpio write $LCD_D5 0
gpio write $LCD_D6 0
gpio write $LCD_D7 0

sleep 0.1

#init
gpio write $LCD_D0 0
gpio write $LCD_D1 0
gpio write $LCD_D2 0
gpio write $LCD_D3 0
gpio write $LCD_D4 1
gpio write $LCD_D5 1
gpio write $LCD_D6 0
gpio write $LCD_D7 0

#read 30hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

#read 30hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

#read 30hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

gpio write $LCD_D0 0
gpio write $LCD_D1 0
gpio write $LCD_D2 0
gpio write $LCD_D3 1
gpio write $LCD_D4 1
gpio write $LCD_D5 1
gpio write $LCD_D6 0
gpio write $LCD_D7 0

#read 38hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

gpio write $LCD_D0 0
gpio write $LCD_D1 0
gpio write $LCD_D2 0
gpio write $LCD_D3 1
gpio write $LCD_D4 0
gpio write $LCD_D5 0
gpio write $LCD_D6 0
gpio write $LCD_D7 0

#read 8hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

gpio write $LCD_D0 1
gpio write $LCD_D1 0
gpio write $LCD_D2 0
gpio write $LCD_D3 0
gpio write $LCD_D4 0
gpio write $LCD_D5 0
gpio write $LCD_D6 0
gpio write $LCD_D7 0

#read 1hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

gpio write $LCD_D0 0
gpio write $LCD_D1 1
gpio write $LCD_D2 1
gpio write $LCD_D3 0
gpio write $LCD_D4 0
gpio write $LCD_D5 0
gpio write $LCD_D6 0
gpio write $LCD_D7 0

#read 6hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

gpio write $LCD_D0 0
gpio write $LCD_D1 0
gpio write $LCD_D2 1
gpio write $LCD_D3 1
gpio write $LCD_D4 0
gpio write $LCD_D5 0
gpio write $LCD_D6 0
gpio write $LCD_D7 0

#read 0C hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0

#writing letter A
gpio write $LCD_RS 1

gpio write $LCD_D0 1
gpio write $LCD_D1 0
gpio write $LCD_D2 0
gpio write $LCD_D3 0
gpio write $LCD_D4 0
gpio write $LCD_D5 0
gpio write $LCD_D6 1
gpio write $LCD_D7 0

#read 0C hex
sleep 0.1
gpio write $LCD_E 1
sleep 0.1
gpio write $LCD_E 0