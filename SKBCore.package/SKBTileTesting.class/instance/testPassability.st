tests
testPassability
	| tile |
	tile := SKBTile new.
	self assert: tile isPassable equals: false.
	tile type: #SKBAir.
	self assert: tile isPassable equals: true