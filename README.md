# dolphin-autohotkey
Autohotkey scripts for Dolphin

I found it frusterating that I couldn't swap gamecube controllers via a hotkey in Dolphin, so I wrote a script that will tab over and set custom controller profiles for each controller slot using AutoHotkey.

This script contains the function `SetDolphinController(PlayerNumber, ProfileName)` and a bunch of custom hotkeys I made that makes use of it.

It's self explanatory; PlayerNumber corresponds to the controller port you are assigning, and ProfileName is a string containing the profile name you want to assign to the port.
