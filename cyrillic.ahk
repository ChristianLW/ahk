#SingleInstance
TrayTip "Press Esc to turn off", "Cyrillic Mode is on", "Mute"
Esc::ExitApp
; Comments refer to what Google's "student" layout uses
; Lowercase
	a::Send "а"
	b::Send "б"
	v::Send "в"
	g::Send "г"
	d::Send "д"
	e::Send "е"
	<^>!e::Send "ё" ; nothing
	å::Send "ж" ; Æ
	z::Send "з"
	i::Send "и"
	j::Send "й"
	k::Send "к"
	l::Send "л"
	m::Send "м"
	n::Send "н"
	o::Send "о"
	p::Send "п"
	r::Send "р"
	s::Send "с"
	t::Send "т"
	u::Send "у"
	f::Send "ф"
	x::Send "х"
	h::Send "ц" ; C
	c::Send "ч" ; H
	w::Send "ш" ; W
	<^>!w::Send "щ" ; Ø
	<^>!'::Send "ъ" ; nothing
	y::Send "ы"
	'::Send "ь" ; ,
	æ::Send "э" ; Å
	ø::Send "ю" ; .
	q::Send "я" ; Q
; Uppercase
	+A::Send "А"
	+B::Send "Б"
	+V::Send "В"
	+G::Send "Г"
	+D::Send "Д"
	+E::Send "Е"
	<^>!+E::Send "Ё"
	+Å::Send "Ж"
	+Z::Send "З"
	+I::Send "И"
	+J::Send "Й"
	+K::Send "К"
	+L::Send "Л"
	+M::Send "М"
	+N::Send "Н"
	+O::Send "О"
	+P::Send "П"
	+R::Send "Р"
	+S::Send "С"
	+T::Send "Т"
	+U::Send "У"
	+F::Send "Ф"
	+X::Send "Х"
	+H::Send "Ц"
	+C::Send "Ч"
	+W::Send "Ш"
	<^>!+W::Send "Щ"
	<^>!+'::Send "Ъ"
	+Y::Send "Ы"
	+'::Send "Ь"
	+Æ::Send "Э"
	+Ø::Send "Ю"
	+Q::Send "Я"
