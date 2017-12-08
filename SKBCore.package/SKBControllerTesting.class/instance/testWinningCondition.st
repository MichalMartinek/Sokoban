tests
testWinningCondition
	| level controller |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	controller move: SKBDirection right.
	self assert: controller finishedLevel equals: False.
	controller move: SKBDirection right.
	self assert: controller finishedLevel equals: False.
	controller move: SKBDirection right.
	self assert: controller finishedLevel equals: True