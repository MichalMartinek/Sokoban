tests
testTileAccessing
	| level tile |
	level := SKBLevel withWidth: 40 andHeight: 30.
	tile := level tileAt: 7 @ 7.
	self assert: (tile type) equals: #SKBWall.
	self assert: (tile entity) equals: nil.
	self assert: (tile position) x equals: 7.
	self assert: (tile position) y equals: 7.