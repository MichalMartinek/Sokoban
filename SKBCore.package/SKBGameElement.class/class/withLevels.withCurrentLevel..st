as yet unclassified
withLevels: aCollection withCurrentLevel: aSKBLevel 
	|element|
	element := SKBGameElement withWindow.
	element levels: aCollection.
	element currentLevel: aSKBLevel.
	^ element.