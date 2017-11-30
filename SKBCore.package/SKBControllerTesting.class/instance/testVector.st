tests
testVector
	| controller |
	controller := SKBController new.
	self assert: (controller vector: #SKBUp) equals: 0 @ -1.
	self assert: (controller vector: #SKBRight) equals: 1 @ 0.
	self assert: (controller vector: #SKBSomething) equals: nil