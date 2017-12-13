accessing
finishedLevel
	| res |
	res := true.
	endTiles
		do: [ :t | 
			t entity = #SKBCrate
				ifFalse: [ res := false ] ].
	^ res