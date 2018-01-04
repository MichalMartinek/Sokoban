tests
testLevelResponseToMove
	| level controller counter |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	counter := 0.
	controller responseOnMove: [ counter := counter + 1 ].
	10 timesRepeat: [ controller move: SKBDirection right ].
	self assert: counter equals: 3