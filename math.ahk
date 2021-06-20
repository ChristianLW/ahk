#SingleInstance
Window := Gui("+AlwaysOnTop -Caption +ToolWindow", "Math Input")
Window.BackColor := "101010"
Window.SetFont("s16")
Window.Add("Text", "y8 cE0E0E0", "Math Input")
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
			case "0": Send("⟺")
			case "3": Send("▒")
			case "8": Send("〖")
			case "9": Send("〗")
			case "s": Send("∑")
		}
	} else if (!Modifiers.RShift && Modifiers.RAlt) {
		; AltGr
		switch (Hook.EndKey) {
		}
	} else if (Modifiers.RShift && Modifiers.RAlt) {
		; Shift & AltGr
	} else if (!Modifiers.RShift && !Modifiers.RAlt) {
		; None
		if (PassKeys.Has(Hook.EndKey)) {
			Send("{" Hook.EndKey "}")
			continue
		}
		switch (Hook.EndKey) {
			case "i": Send("∫")
			case "s": Send("√")
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
