as yet unclassified
previousLevel
	levelIndex = 1
		ifFalse: [ levelIndex := levelIndex - 1.
			self currentLevel: (levels at: levelIndex) ]