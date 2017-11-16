initialization
withEntity: anEntity
	| tile |
	tile := SKBTile new.
	tile entity: anEntity.
	^tile