#SingleInstance
Window := Gui.New("+AlwaysOnTop -Caption +ToolWindow", "Greek Input")
Window.BackColor := "101010"
Window.SetFont("s16")
Window.Add("Text", "y8 cE0E0E0", "Greek Input")
Window.Show("h40 xCenter y1040 NoActivate")

Esc::ExitApp()

; Lowercase
	a::Send("α")
	b::Send("β")
	g::Send("γ")
	d::Send("δ")
	e::Send("ε")
	z::Send("ζ")
	h::Send("η")
	u::Send("θ")
	i::Send("ι")
	k::Send("κ")
	l::Send("λ")
	m::Send("μ")
	n::Send("ν")
	j::Send("ξ")
	o::Send("ο")
	p::Send("π")
	r::Send("ρ")
	s::Send("σ")
	c::Send("ς") ; W on Greek keyboards
	t::Send("τ")
	y::Send("υ")
	f::Send("φ")
	x::Send("χ")
	w::Send("ψ") ; C on Greek keyboards
	q::Send("ω") ; V on Greek keyboards
; Uppercase
	+a::Send("Α")
	+b::Send("Β")
	+g::Send("Γ")
	+d::Send("Δ")
	+e::Send("Ε")
	+z::Send("Ζ")
	+h::Send("Η")
	+u::Send("Θ")
	+i::Send("Ι")
	+k::Send("Κ")
	+l::Send("Λ")
	+m::Send("Μ")
	+n::Send("Ν")
	+j::Send("Ξ")
	+o::Send("Ο")
	+p::Send("Π")
	+r::Send("Ρ")
	+s::Send("Σ")
	+t::Send("Τ")
	+y::Send("Υ")
	+f::Send("Φ")
	+x::Send("Χ")
	+w::Send("Ψ") ; C on Greek keyboards
	+q::Send("Ω") ; V on Greek keyboards
; Unused Letter Keys
	v::return
	+c::return
	+v::return
