#SingleInstance
Window := Gui("+AlwaysOnTop -Caption +ToolWindow", "Cyrillic Input")
Window.BackColor := "101010"
Window.SetFont("s16")
Window.Add("Text", "y8 cE0E0E0", "Cyrillic Input")
Window.Show("h40 xCenter y1040 NoActivate")

Esc::ExitApp()

; Comments refer to what Google's "student" layout uses
; Lowercase
	a::Send("а")
	b::Send("б")
	v::Send("в")
	g::Send("г")
	d::Send("д")
	e::Send("е")
	<^>!e::Send("ё") ; nothing
	å::Send("ж") ; Æ
	z::Send("з")
	i::Send("и")
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
; Uppercase
	+a::Send("А")
	+b::Send("Б")
	+v::Send("В")
	+g::Send("Г")
	+d::Send("Д")
	+e::Send("Е")
	<^>!+e::Send("Ё")
	+å::Send("Ж")
	+z::Send("З")
	+i::Send("И")
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
	<^>!+'::Send("Ъ")
	+y::Send("Ы")
	+'::Send("Ь")
	+æ::Send("Э")
	+ø::Send("Ю")
	+q::Send("Я")
