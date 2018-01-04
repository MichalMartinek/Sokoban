initialization
withEntity: anEntity withPosition: aPosition
	| tile |
	tile := self new.
	tile entity: anEntity.
	tile position: aPosition.
	^ tile