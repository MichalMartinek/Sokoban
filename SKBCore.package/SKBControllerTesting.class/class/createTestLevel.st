testDataCreation
createTestLevel
	| level |
	level := SKBLevel withWidth: 7 andHeight: 3.
	2 to: 6 do: [ :i | level tileAt: i @ 2 put: (SKBTile withType: #SKBAir) ].
	(level tileAt: 2 @ 2) entity: #SKBPlayer.
	(level tileAt: 4 @ 2) entity: #SKBCrate.
	(level tileAt: 6 @ 2) type: #SKBCrateSlot.
	^ level