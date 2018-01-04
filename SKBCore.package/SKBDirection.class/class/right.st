accessing
right
	^ rightDirection ifNil: [ rightDirection := SKBDirection withVector: 1 @ 0 ]