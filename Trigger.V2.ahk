global triggerBotEnabled := false

~F2::
  triggerBotEnabled := !triggerBotEnabled
  if (triggerBotEnabled) {
    Loop {
        KeyWait, XButton1, D
      CoordMode, Pixel, Screen
      PixelSearch, FoundX, FoundY, 957, 519, 961, 583, 0xFFFF55, 30, Fast RGB
      If (ErrorLevel = 0) {
        sleep, 30
        send {Lbutton down}
        sleep, 10
        send {lbutton up}
      }
      sleep, 0
    }
  }
return
