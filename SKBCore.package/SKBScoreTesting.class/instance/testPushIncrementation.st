tests
testPushIncrementation
	| score |
	score := SKBScore new.
	score incrementPush.
	score incrementPush.
	self assert: score pushes equals: 2