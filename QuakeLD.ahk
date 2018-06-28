last_active_window := 0
explorerpath:="C:\Users\Ryan\Desktop\Local Dump"
#WinActivateForce

; Change your hotkey here
F8::

DetectHiddenWindows, on
IfWinExist, ahk_class CabinetWClass
{

        WinGet, vwinID, List, ahk_class CabinetWClass
        ;MsgBox,0x1000,,there are %vWinID% windows of CabinetWClass open.
        Loop, %vWinID%
        { x := vWinID%A_Index%
          WinGetTitle, wt, ahk_id %x%
          ;msgBox,0x1000,, index=%a_Index% of %vWinID%`nwt=%wt% id=%x%

          if (wt == "Local Dump" ) {
          ;msgBox,0x1000,, local dump found
                  IfWinActive ahk_id %x% 
                  {
                        WinHide ahk_id %x%
                  }
                  else {
                        WinShow ahk_id %x%
                        WinActivate ahk_id %x%
                  }
                  DetectHiddenWindows, off
                  return
          }
         }
         ; didn't find localdump
         Run, explore %explorerpath%
}
else
{	
	WinGet, last_active_window, ID, A
	Run, explore %explorerpath%
}
DetectHiddenWindows, off
return
