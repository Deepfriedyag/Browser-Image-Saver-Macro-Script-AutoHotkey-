#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

XButton2::
{
    Click, right
    Sleep, 100

    Send, v
    Sleep, 100

    ; Wait for ANY save dialog window
    WinWaitActive, ahk_class #32770,, 3
    if ErrorLevel
        return

    Sleep, 10

    ; Confirm save
    Send, {Enter}

    return
}