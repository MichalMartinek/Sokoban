as yet unclassified
uiElement
	| uiElement |
	entity = nil
		ifTrue: [ uiElement := SKBAirTileElement new ].
	entity = #SKBPlayer
		ifTrue: [ uiElement := SKBPlayerTileElement new ].
	entity = #SKBCrate
		ifTrue: [ uiElement := SKBCrateTileElement new ].
	^ uiElement