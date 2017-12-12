tests
testMovePlayerToEmptyTile
	| level controller counter |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	counter := 0.
	controller responseOnMove: [ counter := counter + 1 ].
	controller movePlayerToEmptyTile: 3 @ 2.
	self assert: counter equals: 1