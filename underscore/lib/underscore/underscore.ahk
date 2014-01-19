#NoEnv
#SingleInstance force 
SendMode Input
SetWorkingDir %A_ScriptDir%

set(state) {
  global enabled := state

  icon := enabled ? "underscore_on.ico" : "underscore_off.ico"
  tip := enabled ? "ON" : "OFF"

  Menu Tray, Icon, %icon%
  Menu Tray, Tip, %tip%
}

set(false) 

^+u::set(!enabled)

#If enabled

Space::Send _ 

~Escape::
~Tab::
~Enter::set(!enabled) 