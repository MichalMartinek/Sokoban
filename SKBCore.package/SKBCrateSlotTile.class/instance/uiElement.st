as yet unclassified
uiElement
	entity = #SKBPlayer
		ifTrue: [ ^ SKBPlayerTileElement new ].
	entity = #SKBCrate
		ifTrue: [ ^ SKBCrateTileElement new ].
	^ SKBCrateSlotTileElement new