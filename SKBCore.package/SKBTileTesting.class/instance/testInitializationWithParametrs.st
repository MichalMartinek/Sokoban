tests
testInitializationWithParametrs
	| tile |
	tile := SKBAirTile new.
	self assert: tile type equals: #SKBAir.
	self assert: tile entity equals: nil.
	tile := SKBWallTile withEntity: #SKBPlayer.
	self assert: tile type equals: #SKBWall.
	self assert: tile entity equals: #SKBPlayer.