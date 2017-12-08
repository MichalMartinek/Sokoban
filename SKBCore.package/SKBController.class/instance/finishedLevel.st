accessing
finishedLevel
	| res |
	res := True.
	endTiles do: [ :t | (t entity = #SKBCrate) ifFalse: [ res := False. ] ].
	^ res.