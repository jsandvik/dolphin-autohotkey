F1::
	SetDolphinController(1, "xboxSC2")
Return

F2::
	Send, {Enter}
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

	Send, {Alt down}{tab}
	Send, {Alt up}
}

