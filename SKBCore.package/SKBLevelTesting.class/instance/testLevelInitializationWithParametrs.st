tests
testLevelInitializationWithParametrs
	| level |
	level := SKBLevel withWidth: 40 andHeight: 30.
	self assert: level width equals: 40.
	self assert: level height equals: 30