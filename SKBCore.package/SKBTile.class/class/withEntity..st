initialization
withEntity: anEntity
	| tile |
	tile := self new.
	tile entity: anEntity.
	^tile