#MaxHotkeysPerInterval 200
DoWeNeedToFireMouseWheel()
{
MouseGetPos, x1, y1, hw1
if (y1 >= 60 && x1 < 300 && WinActive("ahk_class MozillaWindowClass"))
return 1
}
#If, DoWeNeedToFireMouseWheel()
WheelUp::
Send ^+{Tab}
return
WheelDown::
Send ^{Tab}
return
#If
