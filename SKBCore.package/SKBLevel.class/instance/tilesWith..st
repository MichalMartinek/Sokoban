accessing
tilesWith: aBlockClosure
	| result |
	result := Array new.
	map collect: [ :arr | result := result union: (arr select: aBlockClosure) ].
	^result