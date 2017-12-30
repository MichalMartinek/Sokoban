initialization
footer
	| el |
	el := BlElement new
		layout: BlFlowLayout new vertical alignCenterRight;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical exact: 150.
			c
				margin:
					(BlInsets
						top: 10
						right: 50
						bottom: 0
						left: 10) ];
		yourself.
	quitButton := SKBSmallButtonElement withText: 'Q U I T'.
	el addChild: quitButton.
	^ el