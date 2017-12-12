tests
testVectorSetterAndGetter
	| dir |
	dir := SKBDirection new.
	dir vector: 1@1.
	self assert: dir vector equals: 1@1.