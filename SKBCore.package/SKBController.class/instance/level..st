accessing
level: aLevel
	| playerTile |
	level := aLevel.
	playerTile := aLevel tilesWith: [ :t | t entity = #SKBPlayer ].
	playerPosition := (playerTile at: 1) position