tests
testTypeChanging
	| tile |
	tile := SKBTile new.
	tile type: #SKBAir.
	self assert: tile type equals: #SKBAir.