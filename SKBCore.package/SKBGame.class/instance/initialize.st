initialization
initialize
	levels := SKBLevelCollection new levels.
	currentLevel := levels at: 1.
	gameElement := SKBGameElement withLevels: levels withCurrentLevel: currentLevel.
	