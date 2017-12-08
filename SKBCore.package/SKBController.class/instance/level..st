accessing
level: aLevel
	| playerTile |
	level := aLevel.
	score reset.
	endTiles := aLevel
		tilesWith: [ :t | t type = #SKBCrateSlot ].
	playerTile := aLevel
		tilesWith: [ :t | t entity = #SKBPlayer ].
	playerPosition := (playerTile at: 1)
		position