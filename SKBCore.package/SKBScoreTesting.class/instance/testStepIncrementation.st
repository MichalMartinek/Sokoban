tests
testStepIncrementation
	| score |
	score := SKBScore new.
	score incrementStep.
	score incrementStep.
	self assert: score steps equals: 2.