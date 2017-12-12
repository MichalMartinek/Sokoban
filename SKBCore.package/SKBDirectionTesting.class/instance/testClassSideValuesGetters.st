tests
testClassSideValuesGetters
	self assert: SKBDirection left vector equals: -1 @ 0.
	self assert: SKBDirection right vector equals: 1 @ 0.
	self assert: SKBDirection up vector equals: 0 @ -1.
	self assert: SKBDirection down vector equals: 0 @ 1.