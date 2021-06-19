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
	F13 & XButton1::Send("{Blind}{WheelUp}")
	F13 & XButton2::Send("{Blind}{WheelDown}")

; Force Lock Keys
	SetNumLockState("AlwaysOn")

; Disable Multimedia Keys
	*Launch_App1::return
	*Launch_App2::return
	*Browser_Home::return
	*Launch_Mail::return
	*Volume_Mute::return
	*Volume_Up::return
	*Volume_Down::return
	*Media_Play_Pause::return
	*Launch_Media::return
