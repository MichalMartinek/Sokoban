accessing
levelAt: anIndex
	levels ifNil: [ self generateLevels ].
	^ levels at: anIndex