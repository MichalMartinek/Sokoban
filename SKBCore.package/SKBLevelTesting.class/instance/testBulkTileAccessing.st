tests
testBulkTileAccessing
	| level tiles |
	level := SKBLevel withWidth: 40 andHeight: 30.
	tiles := level tilesWith: [ :t | t entity = #SKBPlayer ].
	self assert: tiles size equals: 0.
	tiles := level tilesWith: [ :t | t type = #SKBWall ].
	self assert: tiles size equals: ((level width) * (level height))