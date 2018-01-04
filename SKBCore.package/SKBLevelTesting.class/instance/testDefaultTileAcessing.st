tests
testDefaultTileAcessing
	| level tile |
	level := SKBLevel withWidth: 40 andHeight: 30.
	tile := level tileAt: 10@10.
	self assert: tile type equals: #SKBWall.
	self assert: tile entity equals: nil