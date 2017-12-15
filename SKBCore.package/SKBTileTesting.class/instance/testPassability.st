tests
testPassability
	self assert: (SKBWallTile new) isPassable equals: false.
	self assert: (SKBAirTile new) isPassable equals: true