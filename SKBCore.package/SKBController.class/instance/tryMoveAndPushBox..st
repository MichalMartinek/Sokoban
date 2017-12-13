accessing
tryMoveAndPushBox: aTilePosition
	(level tileAt: aTilePosition) entity = #SKBCrate
		ifTrue: [ | vector newTilePosition |
			vector := aTilePosition - playerPosition.
			newTilePosition := playerPosition + (2 * vector).
			((level isValidPosition: newTilePosition) and: (level tileAt: newTilePosition) isPassable)
				ifTrue: [ (level tileAt: playerPosition) entity: nil.
					(level tileAt: aTilePosition) entity: #SKBPlayer.
					(level tileAt: newTilePosition) entity: #SKBCrate.
					playerPosition := aTilePosition.
					score incrementStep.
					score incrementPush.
					onMoveResponse ifNotNil: [ onMoveResponse value ] ] ]