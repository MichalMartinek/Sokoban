tests
testLevelTileSetting
	| level tile |
	level := SKBLevel withWidth: 40 andHeight: 30.
	level tileAt: 10 @ 10 put: (SKBTile withType: #SKBAir).
	tile := level tileAt: 10 @ 10.
	self assert: tile type equals: #SKBAir.
	self assert: tile entity equals: nil