tests
testClassSideInitialization
	| dir |
	dir := SKBDirection withVector: 1 @ 1.
	self assert: dir vector equals: 1 @ 1