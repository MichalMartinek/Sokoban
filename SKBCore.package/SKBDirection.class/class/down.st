actions
down
	^ downDirection ifNil: [ downDirection := SKBDirection withVector: 0 @ 1 ]