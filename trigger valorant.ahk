global triggerBotEnabled := false

~F2::
  triggerBotEnabled := !triggerBotEnabled
  if (triggerBotEnabled) {
    Loop {
      CoordMode, Pixel, Screen
      PixelSearch, FoundX, FoundY, 957, 519, 961, 583, 0xA145A3, 30, Fast RGB
      If (ErrorLevel = 0) {
        sleep, 30
        send {Lbutton down}
        sleep, 10
        send {lbutton up}
      }
    }
  }
return
