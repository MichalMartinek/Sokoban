tests
testScoreInitialization
	| score |
	score := SKBScore new.
	self assert: score steps equals: 0.
	self assert: score pushes equals: 0.