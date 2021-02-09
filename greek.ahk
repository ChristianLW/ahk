#SingleInstance
TrayTip "Press Esc to turn off", "Greek Mode is on", "Mute"
Esc::ExitApp
; Lowercase
	a::Send "α"
	b::Send "β"
	g::Send "γ"
	d::Send "δ"
	e::Send "ε"
	z::Send "ζ"
	h::Send "η"
	u::Send "θ"
	i::Send "ι"
	k::Send "κ"
	l::Send "λ"
	m::Send "μ"
	n::Send "ν"
	j::Send "ξ"
	o::Send "ο"
	p::Send "π"
	r::Send "ρ"
	s::Send "σ"
	c::Send "ς" ; W on Greek keyboards
	t::Send "τ"
	y::Send "υ"
	f::Send "φ"
	x::Send "χ"
	w::Send "ψ" ; C on Greek keyboards
	q::Send "ω" ; V on Greek keyboards
; Uppercase
	+A::Send "Α"
	+B::Send "Β"
	+G::Send "Γ"
	+D::Send "Δ"
	+E::Send "Ε"
	+Z::Send "Ζ"
	+H::Send "Η"
	+U::Send "Θ"
	+I::Send "Ι"
	+K::Send "Κ"
	+L::Send "Λ"
	+M::Send "Μ"
	+N::Send "Ν"
	+J::Send "Ξ"
	+O::Send "Ο"
	+P::Send "Π"
	+R::Send "Ρ"
	+S::Send "Σ"
	+T::Send "Τ"
	+Y::Send "Υ"
	+F::Send "Φ"
	+X::Send "Χ"
	+W::Send "Ψ" ; C on Greek keyboards
	+Q::Send "Ω" ; V on Greek keyboards
; Unused Letter Keys
	v::return
	+C::return
	+V::return
