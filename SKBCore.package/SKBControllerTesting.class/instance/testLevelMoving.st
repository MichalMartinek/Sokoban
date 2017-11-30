tests
testLevelMoving
	| level controller |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	controller move: #SKBNothing.
	self assert: controller playerPosition equals: 2 @ 2.
	controller move: #SKBUp.
	self assert: controller playerPosition equals: 2 @ 2.
	controller move: #SKBRight.
	self assert: controller playerPosition equals: 3 @ 2