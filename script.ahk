Numpad1 & Numpad4::
	SetDolphinController(1, "gc")
Return

Numpad1 & Numpad5::
	SetDolphinController(1, "gc2")
Return

Numpad1 & Numpad7::
	SetDolphinController(1, "xboxSC")
Return

Numpad1 & Numpad8::
	SetDolphinController(1, "xboxSC2")
Return

Numpad1 & Numpad9::
	SetDolphinController(1, "ps4SC")
Return

Numpad1 & Numpad6::
	SetDolphinController(1, "fightstick")
Return

Numpad2 & Numpad4::
	SetDolphinController(2, "gc")
Return

Numpad2 & Numpad5::
	SetDolphinController(2, "gc2")
Return

Numpad2 & Numpad7::
	SetDolphinController(2, "xboxSC")
Return

Numpad2 & Numpad8::
	SetDolphinController(2, "xboxSC2")
Return

Numpad2 & Numpad9::
	SetDolphinController(2, "ps4SC")
Return

Numpad2 & Numpad6::
	SetDolphinController(2, "fightstick")
Return

SetDolphinController(PlayerNumber, ProfileName)
{
	SetControlDelay -1

	Send, {Alt down}{tab}
	Send, {Alt up}
	WinWait, Dolphin 5.0-rc-35, , 5
	ControlClick, X876 Y120, Dolphin 5.0-rc-35
	WinWait, Dolphin Controller Configuration, , 5
	if (PlayerNumber=1) {
		ControlClick, Button2, Dolphin Controller Configuration ;controller 1
	} else if (PlayerNumber=2) {
		ControlClick, Button3, Dolphin Controller Configuration ;controller 2
	} else if (PlayerNumber=3) {
		ControlClick, Button4, Dolphin Controller Configuration ;controller 3
	} else if (PlayerNumber=4) {
		ControlClick, Button5, Dolphin Controller Configuration ;controller 4
	}
	
	WinWait, GameCube Controller Configuration, , 5
	
	; for some reason button ids are different for 3 and 4
	if (playerNumber < 3) {
		ControlClick, Button38, GameCube Controller Configuration ;refresh
		ControlSetText, Edit9, %ProfileName%, GameCube Controller Configuration
		ControlClick, Button42, GameCube Controller Configuration ;load
		ControlClick, Button45, GameCube Controller Configuration ;close
	} else {
		ControlClick, Button37, GameCube Controller Configuration ;refresh
		ControlSetText, Edit9, %ProfileName%, GameCube Controller Configuration
		ControlClick, Button41, GameCube Controller Configuration ;load
		ControlClick, Button44, GameCube Controller Configuration ;close
	}
	WinWaitClose, GameCube Controller Configuration, , 5

	ControlClick, Button21, Dolphin Controller Configuration ;close

	WinWaitClose, Dolphin Controller Configuration, , 5

	Send, {Alt down}{tab}
	Send, {Alt up}
}

