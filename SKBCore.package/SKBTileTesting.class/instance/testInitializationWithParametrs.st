tests
testInitializationWithParametrs
	| tile |
	tile := SKBTile withType: #SKBAir.
	self assert: tile type equals: #SKBAir.
	self assert: tile entity equals: nil.
	tile := SKBTile withEntity: #SKBPlayer.
	self assert: tile type equals: #SKBWall.
	self assert: tile entity equals: #SKBPlayer.