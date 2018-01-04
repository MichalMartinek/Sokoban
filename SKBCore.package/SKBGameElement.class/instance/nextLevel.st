as yet unclassified
nextLevel
	levelIndex = levels size
		ifFalse: [ levelIndex := levelIndex + 1.
			self currentLevel: (levels at: levelIndex) ]