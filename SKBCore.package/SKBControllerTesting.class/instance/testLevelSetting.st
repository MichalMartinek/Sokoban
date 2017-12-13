tests
testLevelSetting
	| level controller |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	self assert: controller playerPosition equals: 2 @ 2.
	self assert: (controller level) width equals: level width.
	self assert: (controller level) height equals: level height.