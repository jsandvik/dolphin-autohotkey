F1::
	SetControlDelay -1
	ControlClick, X876 Y120, Dolphin 5.0-rc-35
	WinWaitActive, Dolphin Controller Configuration, , 5
	ControlClick, Button2, Dolphin Controller Configuration ;controller 1
	WinWaitActive, GameCube Controller Configuration
	ControlClick, Button38, GameCube Controller Configuration ;refresh
	ControlSetText, Edit9, gc, GameCube Controller Configuration
	ControlClick, Button42, GameCube Controller Configuration ;load
	ControlClick, Button45, GameCube Controller Configuration ;close
	WinWaitClose, GameCube Controller Configuration
	ControlClick, Button21, Dolphin Controller Configuration ;close
Return