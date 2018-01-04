tests
testEntityChanging
	| tile |
	tile := SKBTile new.
	tile entity: #SKBPlayer.
	self assert: tile entity equals: #SKBPlayer