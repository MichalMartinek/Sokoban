tests
testLevelLoadingFromString
	| level |
	level := SKBLevel
		fromString:
			'#######
#P C S#
#######'.
	self assert: (level tileAt: 1 @ 1) type equals: #SKBWall.
	self assert: (level tileAt: 1 @ 1) entity equals: nil.
	self assert: (level tileAt: 2 @ 2) type equals: #SKBAir.
	self assert: (level tileAt: 2 @ 2) entity equals: #SKBPlayer.
	self assert: (level tileAt: 3 @ 2) type equals: #SKBAir.
	self assert: (level tileAt: 3 @ 2) entity equals: nil.
	self assert: (level tileAt: 4 @ 2) type equals: #SKBAir.
	self assert: (level tileAt: 4 @ 2) entity equals: #SKBCrate.
	self assert: (level tileAt: 6 @ 2) type equals: #SKBCrateSlot.
	self assert: (level tileAt: 6 @ 2) entity equals: nil