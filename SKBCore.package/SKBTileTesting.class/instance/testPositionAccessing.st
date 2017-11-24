tests
testPositionAccessing
	| tile |
	tile := SKBTile new.
	tile position: 1@7.
	self assert: (tile position) x equals: 1.
	self assert: (tile position) y equals: 7.