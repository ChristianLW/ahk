#SingleInstance
; Miscellaneous Characters
	<^>!o::Send("°")
	<^>!x::Send("×")
	<^>!/::Send("÷")
	<^>!-::Send("−")
	<^>!*::Send("⋅")
	<^>!,::Send("·")
	<^>!_::Send("–")
	<^>!Space::Send(" ")

; Icelandic Letters
	<^>!d::Send("ð")
	<^>!+d::Send("Ð")
	<^>!t::Send("þ")
	<^>!+t::Send("Þ")

; Secondary "keyboards"
	<^>!F1::Run("special.ahk")
	<^>!F2::Run("greek.ahk")
	<^>!F3::Run("cyrillic.ahk")
	<^>!F4::Run("math.ahk")

; Scroll
	CapsLock & XButton1::Send("{Blind}{WheelUp}")
	CapsLock & XButton2::Send("{Blind}{WheelDown}")

; Box Drawing
	CapsLock & NumpadAdd::Send("│")
	CapsLock & Numpad0::Send("─")
	CapsLock & Numpad1::Send("└")
	CapsLock & Numpad2::Send("┴")
	CapsLock & Numpad3::Send("┘")
	CapsLock & Numpad4::Send("├")
	CapsLock & Numpad5::Send("┼")
	CapsLock & Numpad6::Send("┤")
	CapsLock & Numpad7::Send("┌")
	CapsLock & Numpad8::Send("┬")
	CapsLock & Numpad9::Send("┐")

; Force Lock Keys
	SetCapsLockState("AlwaysOff")
	SetNumLockState("AlwaysOn")

; Disable Multimedia Keys
	Launch_App1::return
	Launch_App2::return
	Browser_Home::return
	Launch_Mail::return
	Volume_Mute::return
	Volume_Up::return
	Volume_Down::return
	Media_Play_Pause::return
	Launch_Media::return
