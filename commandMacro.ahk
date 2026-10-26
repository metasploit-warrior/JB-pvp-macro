
#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

commands := ["banitem tase,road,hand,plasmashotgun,c4,grenade,rocket t"
    , "time 12 t"
    , "keepinventory t"
    , "announceplayerkills t"
    , "friendlyfire t"]

F6::
    for index, cmd in commands
    {
        Clipboard := cmd
        ClipWait, 1
        Send, ^v
        Sleep, 25
        Send, {Enter}
        Sleep, 25
    }
return

F7::ExitApp
