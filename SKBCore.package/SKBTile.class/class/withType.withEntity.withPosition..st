initialization
withType: aType withEntity: anEntity withPosition: aPosition
	| tile |
	tile := SKBTile new.
	tile type: aType.
	tile entity: anEntity.
	tile position: aPosition.
	^ tile