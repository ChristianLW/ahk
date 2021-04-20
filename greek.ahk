#SingleInstance
Window := Gui.New("+AlwaysOnTop -Caption +ToolWindow", "Greek Input")
Window.BackColor := "101010"
Window.SetFont("s16")
Window.Add("Text", "y8 cE0E0E0", "Greek Input")
Window.Show("h40 xCenter y1040 NoActivate")

Esc::ExitApp()

; Comments refer to what the Greek keyboard layout uses
; Lowercase
	a::Send("α")
	b::Send("β")
	g::Send("γ")
	d::Send("δ")
	e::Send("ε")
	z::Send("ζ")
	h::Send("η")
	y::Send("θ") ; U
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
	c::Send("ς") ; W
	t::Send("τ")
	u::Send("υ") ; Y
	f::Send("φ")
	x::Send("χ")
	w::Send("ψ") ; C
	q::Send("ω") ; V
; Uppercase
	+a::Send("Α")
	+b::Send("Β")
	+g::Send("Γ")
	+d::Send("Δ")
	+e::Send("Ε")
	+z::Send("Ζ")
	+h::Send("Η")
	+y::Send("Θ")
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
	+u::Send("Υ")
	+f::Send("Φ")
	+x::Send("Χ")
	+w::Send("Ψ")
	+q::Send("Ω")
; Unused Letter Keys
	v::return
	+c::return
	+v::return
