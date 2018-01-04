initialization
fromString: aString
	| lines level y |
	lines := aString lines.
	level := SKBLevel withWidth: (lines at: 1) size andHeight: lines size.
	y := 1.
	lines
		do: [ :line | 
			| x |
			x := 1.
			line
				do: [ :char | 
					level tileAt: x @ y put: (SKBTile fromChar: char).
					x := x + 1 ].
			y := y + 1 ].
	^ level