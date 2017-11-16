initialization
withType: aType 
	| tile |
	tile := SKBTile new.
	tile type: aType.
	^tile