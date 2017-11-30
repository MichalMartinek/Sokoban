controll
move: aDirection
	| vector |
	vector := self vector: aDirection.
	vector
		ifNotNil: [ | newPosition |
			newPosition := playerPosition + vector.
			((level isValidPosition: newPosition) and: (level tileAt: newPosition) isPassable)
				ifTrue: [ (level tileAt: playerPosition) entity: nil.
					(level tileAt: newPosition) entity: #SKBPlayer.
					playerPosition := newPosition.
					onMoveResponse ifNotNil: [ onMoveResponse value. ] ] ]