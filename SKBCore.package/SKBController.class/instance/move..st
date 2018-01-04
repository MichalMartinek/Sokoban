controll
move: aSKBDirection
	| vector |
	vector := aSKBDirection vector.
	vector
		ifNotNil: [ | newPosition |
			newPosition := playerPosition + vector.
			((level isValidPosition: newPosition) and: (level tileAt: newPosition) isPassable)
				ifTrue: [ (level tileAt: newPosition) entity ifNil: [ self movePlayerToEmptyTile: newPosition ] ifNotNil: [ self tryMoveAndPushBox:  newPosition ] ] ]