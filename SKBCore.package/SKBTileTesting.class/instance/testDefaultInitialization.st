tests
testDefaultInitialization
	| tile |
	tile := SKBTile new.
	self assert: tile type equals: #SKBWall.
	self assert: tile entity equals: nil