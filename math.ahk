#SingleInstance
Window := Gui("+AlwaysOnTop -Caption +ToolWindow", "Math Input")
Window.BackColor := "101010"
Window.SetFont("s16")
Window.Add("Text", "y8 cE0E0E0", "Math Input")
Window.Show("h40 xCenter y1040 NoActivate")

Hook := InputHook("", "{Esc}{Enter}")
Hook.Start()
Hook.Wait()

if (Hook.EndKey == "Escape") {
	ExitApp()
}

switch (Hook.Input) {
	case "and":      Send("∧")
	case "approx":   Send("≈")
	case "cdots":    Send("⋯")
	case "contains": Send("∋")
	case "ddots":    Send("⋱")
	case "empty":    Send("∅")
	case "exists":   Send("∃")
	case "ge":       Send("≥")
	case "iff":      Send("⟺")
	case "in":       Send("∈")
	case "inf":      Send("∞")
	case "int":      Send("∫")
	case "intersec": Send("∩")
	case "le":       Send("≤")
	case "mat":      Send("■")
	case "ne":       Send("≠")
	case "of":       Send("▒")
	case "or":       Send("∨")
	case "prop":     Send("∝")
	case "sqrt":     Send("√")
	case "subset":   Send("⊂")
	case "sum":      Send("∑")
	case "supset":   Send("⊃")
	case "union":    Send("∪")
	case "vdots":    Send("⋮")
	case "<=":       Send("⟸")
	case "=>":       Send("⟹")
	case "(":        Send("〖")
	case ")":        Send("〗")
}
