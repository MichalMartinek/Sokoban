accessing
gameElement: aGameElement
	gameElement := aGameElement.
		playEventListener gameElement: aGameElement.
	quitButton addEventHandler: gameElement quitButtonEventListener