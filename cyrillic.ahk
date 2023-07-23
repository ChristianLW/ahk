#Requires AutoHotkey v2.0
#SingleInstance
Window := Gui("+AlwaysOnTop -Caption +ToolWindow", "Cyrillic Input")
Window.BackColor := "101010"
Window.SetFont("s16")
Window.Add("Text", "y8 cE0E0E0", "Cyrillic Input")
Window.Show("h40 xCenter y1040 NoActivate")

Esc::ExitApp()

/* Ukrainian is missing the apostrophe, but since it clashes with    */
/* the Russian version and is practically never used (as well as not */
/* actually being a Cyrillic letter), it has not been implemented    */

; Comments refer to what Google's "student" layout uses for Russian letters
; Lowercase
	a::Send("а")
	b::Send("б")
	v::Send("в")
	g::Send("г")
	<^>!g::Send("ґ")
	d::Send("д")
	e::Send("е")
	<^>!e::Send("ё") ; nothing
	<^>!æ::Send("є")
	å::Send("ж") ; Æ
	z::Send("з")
	i::Send("и")
	<^>!i::Send("і")
	<^>!j::Send("ї")
	j::Send("й")
	k::Send("к")
	l::Send("л")
	m::Send("м")
	n::Send("н")
	o::Send("о")
	p::Send("п")
	r::Send("р")
	s::Send("с")
	t::Send("т")
	u::Send("у")
	f::Send("ф")
	x::Send("х")
	h::Send("ц") ; C
	c::Send("ч") ; H
	w::Send("ш") ; W
	<^>!w::Send("щ") ; Ø
	<^>!'::Send("ъ") ; nothing
	y::Send("ы")
	'::Send("ь") ; ,
	æ::Send("э") ; Å
	ø::Send("ю") ; .
	q::Send("я") ; Q
; Comments refer to whether the letter is Russian or Ukrainian
; Lack of comment means that the letter is shared between the two languages
; Uppercase
	+a::Send("А")
	+b::Send("Б")
	+v::Send("В")
	+g::Send("Г")
	<^>!+g::Send("Ґ") ; Ukrainian
	+d::Send("Д")
	+e::Send("Е")
	<^>!+e::Send("Ё") ; Russian
	<^>!+æ::Send("Є") ; Ukrainian
	+å::Send("Ж")
	+z::Send("З")
	+i::Send("И")
	<^>!+i::Send("І") ; Ukrainian
	<^>!+j::Send("Ї") ; Ukrainian
	+j::Send("Й")
	+k::Send("К")
	+l::Send("Л")
	+m::Send("М")
	+n::Send("Н")
	+o::Send("О")
	+p::Send("П")
	+r::Send("Р")
	+s::Send("С")
	+t::Send("Т")
	+u::Send("У")
	+f::Send("Ф")
	+x::Send("Х")
	+h::Send("Ц")
	+c::Send("Ч")
	+w::Send("Ш")
	<^>!+w::Send("Щ")
	<^>!+'::Send("Ъ") ; Russian
	+y::Send("Ы") ; Russian
	+'::Send("Ь")
	+æ::Send("Э") ; Russian
	+ø::Send("Ю")
	+q::Send("Я")
