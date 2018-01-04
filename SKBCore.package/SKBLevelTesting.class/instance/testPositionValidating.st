tests
testPositionValidating
	| level |
	level := SKBLevel withWidth: 40 andHeight: 30.
	self assert: (level isValidPosition: 10 @ 10) equals: true.
	self assert: (level isValidPosition: 1 @ 1) equals: true.
	self assert: (level isValidPosition: 40 @ 30) equals: true.
	self assert: (level isValidPosition: 0 @ 0) equals: false.
	self assert: (level isValidPosition: 41 @ 31) equals: false