accessing
movePlayerToEmptyTile: aTilePosition
	(level tileAt: playerPosition) entity: nil.
	(level tileAt: aTilePosition) entity: #SKBPlayer.
	playerPosition := aTilePosition.
	score incrementStep.
	onMoveResponse ifNotNil: [ onMoveResponse value ]