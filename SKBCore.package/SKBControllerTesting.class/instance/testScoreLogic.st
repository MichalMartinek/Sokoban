tests
testScoreLogic
	| level controller |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	controller move: SKBDirection left.
	self assert: controller score steps equals: 0.
	self assert: controller score pushes equals: 0.
	controller move: SKBDirection right.
	self assert: controller score steps equals: 1.
	self assert: controller score pushes equals: 0.
	controller move: SKBDirection right.
	self assert: controller score steps equals: 2.
	self assert: controller score pushes equals: 1.
	controller move: SKBDirection down.
	self assert: controller score steps equals: 2.
	self assert: controller score pushes equals: 1.
	controller move: SKBDirection right.
	self assert: controller score steps equals: 3.
	self assert: controller score pushes equals: 2.