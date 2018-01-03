as yet unclassified
nextLevel
	levelIndex = levels size ifFalse: [ 
		levelIndex := levelIndex + 1.
		currentLevel := levels at: levelIndex.
		 ]