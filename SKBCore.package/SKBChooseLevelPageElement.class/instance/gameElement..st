accessing
gameElement: aGameElement
	super gameElement: aGameElement.
	playEventListener gameElement: aGameElement.
	quitButton addEventHandler: gameElement quitButtonEventListener