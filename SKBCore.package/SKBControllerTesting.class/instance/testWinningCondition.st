tests
testWinningCondition
	| level controller |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	controller move: SKBDirection right.
	self assert: controller finishedLevel equals: false.
	controller move: SKBDirection right.
	self assert: controller finishedLevel equals: false.
	controller move: SKBDirection right.
	self assert: controller finishedLevel equals: true