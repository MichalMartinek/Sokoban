tests
testTryMoveAndPushBox
	| level controller counter |
	level := SKBControllerTesting createTestLevel.
	(level tileAt: 2 @ 2) entity: nil.
	(level tileAt: 3 @ 2) entity: #SKBPlayer.
	controller := SKBController new.
	controller level: level.
	counter := 0.
	controller responseOnMove: [ counter := counter + 1 ].
	controller tryMoveAndPushBox: 4 @ 2.
	self assert: counter equals: 1