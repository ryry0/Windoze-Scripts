last_active_window := 0
hotkeyed_window := 0

last_active_window2 := 0
hotkeyed_window2 := 0

#WinActivateForce

; Change your hotkey here
F9::

DetectHiddenWindows, on
IfWinExist ahk_id %hotkeyed_window%
{
	IfWinActive ahk_id %hotkeyed_window%
	  {
			WinHide ahk_id %hotkeyed_window%
			WinActivate ahk_id %last_active_window%
		}
	else
	  {
	    WinGet, last_active_window, ID, A
	    WinShow ahk_id %hotkeyed_window%
	    WinActivate ahk_id %hotkeyed_window%
	  }
}

DetectHiddenWindows, off
return

+F9::
DetectHiddenWindows, on
WinGet, hotkeyed_window, ID, A
DetectHiddenWindows, off
return

; Change your hotkey here
F10::

DetectHiddenWindows, on
IfWinExist ahk_id %hotkeyed_window2%
{
	IfWinActive ahk_id %hotkeyed_window2%
	  {
			WinHide ahk_id %hotkeyed_window2%
			WinActivate ahk_id %last_active_window2%
		}
	else
	  {
	    WinGet, last_active_window2, ID, A
	    WinShow ahk_id %hotkeyed_window2%
	    WinActivate ahk_id %hotkeyed_window2%
	  }
}

DetectHiddenWindows, off
return

+F10::
DetectHiddenWindows, on
WinGet, hotkeyed_window2, ID, A
DetectHiddenWindows, off
return
