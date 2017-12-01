accessing
movePlayerToEmptyTile: aTilePosition
(level tileAt: playerPosition) entity: nil.
					(level tileAt: aTilePosition) entity: #SKBPlayer.
					playerPosition := aTilePosition.
					onMoveResponse ifNotNil: [ onMoveResponse value ].