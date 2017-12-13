tests
testInitializationFromChar
	|tile|
	tile := SKBTile fromChar: $  andPosition: 1@1.
	self assert: tile entity equals: nil.
	self assert: tile position equals: 1@1.
	self assert: tile type equals: #SKBAir.
	tile := SKBTile fromChar: $#.
	self assert: tile entity equals: nil.
	self assert: tile position equals: nil.
	self assert: tile type equals: #SKBWall.
	tile := SKBTile fromChar: $P.
	self assert: tile entity equals: #SKBPlayer.
	self assert: tile type equals: #SKBAir.
	tile := SKBTile fromChar: $C.
	self assert: tile entity equals: #SKBCrate.
	self assert: tile type equals: #SKBAir.
	tile := SKBTile fromChar: $S.
	self assert: tile entity equals: nil.
	self assert: tile type equals: #SKBCrateSlot.
	