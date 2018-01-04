accessing
levelCount
	levels ifNil: [ self generateLevels ].
	^ levels size