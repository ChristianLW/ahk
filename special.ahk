#SingleInstance
Window := Gui.New("+AlwaysOnTop -Caption +ToolWindow", "Special Input")
Window.BackColor := "101010"
Window.SetFont("s16")
Window.Add("Text", "y8 cE0E0E0", "Special Input")
Window.Show("h40 xCenter y1040 NoActivate")

Hook := InputHook()
Hook.KeyOpt("{All}", "ES")
Hook.KeyOpt("{LCtrl}{RCtrl}{LShift}{RShift}{LAlt}{RAlt}", "-ES")

PassKeys := Map("Left", 0, "Right", 0, "Up", 0, "Down", 0, "Backspace", 0)

loop {
	Hook.Start()
	Hook.Wait()
	Modifiers := GetModifiers(Hook.EndMods)
	if (Modifiers.RShift && !Modifiers.RAlt) {
		; Shift
		switch (Hook.EndKey) {
			case "0": Send("⁰")
			case "1": Send("¹")
			case "2": Send("²")
			case "3": Send("³")
			case "4": Send("⁴")
			case "5": Send("⁵")
			case "6": Send("⁶")
			case "7": Send("⁷")
			case "8": Send("⁸")
			case "9": Send("⁹")
			case "+": Send("⁺")
			case "-": Send("⁻")
		}
	} else if (!Modifiers.RShift && Modifiers.RAlt) {
		; AltGr
		switch (Hook.EndKey) {
			case "0": Send("₀")
			case "1": Send("₁")
			case "2": Send("₂")
			case "3": Send("₃")
			case "4": Send("₄")
			case "5": Send("₅")
			case "6": Send("₆")
			case "7": Send("₇")
			case "8": Send("₈")
			case "9": Send("₉")
			case "+": Send("₊")
			case "-": Send("₋")
			case "Left":  Send("←")
			case "Right": Send("→")
			case "Up":    Send("↑")
			case "Down":  Send("↓")
		}
	} else if (!Modifiers.RShift && !Modifiers.RAlt) {
		if (PassKeys.Has(Hook.EndKey)) {
			Send("{" Hook.EndKey "}")
			continue
		}
	}
	if (!Modifiers.LShift) {
		ExitApp()
	}
}

GetModifiers(modString) {
	modifiers := {
		LCtrl:  false,  RCtrl:  false,  Ctrl:  false,
		LShift: false,  RShift: false,  Shift: false,
		LAlt:   false,  RAlt:   false,  Alt:   false
	}
	loop(StrLen(modString) // 2) {
		side := ""
		key := ""
		switch (SubStr(modString, A_Index * 2 - 1, 1)) {
			case "<": side := "L"
			case ">": side := "R"
		}
		switch (SubStr(modString, A_Index * 2, 1)) {
			case "^": key := "Ctrl"
			case "+": key := "Shift"
			case "!": key := "Alt"
		}
		modifiers.%side key% := true
		modifiers.%key% := true
	}
	return modifiers
}
