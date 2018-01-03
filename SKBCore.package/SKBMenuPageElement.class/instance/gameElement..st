accessing
gameElement: aGameElement
	super gameElement: aGameElement.
	menuEventListener gameElement: aGameElement.
	playEventListener gameElement: aGameElement.
	quitBtn addEventHandler: gameElement quitButtonEventListener