tests
testMapAccessing
	| level map |
	level := SKBLevel withWidth: 40 andHeight: 30.
	map := level tileMap .
	self assert: map size equals: 40.
	self assert: (map at: 1) size equals: 30.