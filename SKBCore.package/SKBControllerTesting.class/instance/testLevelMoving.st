tests
testLevelMoving
	| level controller |
	level := SKBControllerTesting createTestLevel.
	controller := SKBController new.
	controller level: level.
	controller move: SKBDirection up.
	self assert: controller playerPosition equals: 2 @ 2.
	self assert: (controller level tileAt: controller playerPosition) entity equals: #SKBPlayer.
	controller move: SKBDirection right.
	self assert: controller playerPosition equals: 3 @ 2.
	self assert: (controller level tileAt: controller playerPosition) entity equals: #SKBPlayer.
	10 timesRepeat: [ controller move: SKBDirection right ].
	self assert: controller playerPosition equals: 5 @ 2.
	self assert: (controller level tileAt: controller playerPosition) entity equals: #SKBPlayer