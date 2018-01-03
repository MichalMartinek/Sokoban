as yet unclassified
withGame: aGame
	| page |
	page := SKBChooseLevelPageElement new.
	page addChild: page footer.
	page playEventListener: SKBPlayButtonEventListener new.
	page gameElement: aGame.
	page
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	page addChild: page arrowUp.
	page addChild: page levelBox.
	page addChild: page arrowDown.
	^ page