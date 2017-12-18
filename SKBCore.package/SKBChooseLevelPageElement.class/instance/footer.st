initialization
footer
	| el |
	el := BlElement new
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical exact: 150.
			c
				margin:
					(BlInsets
						top: 50
						right: 0
						bottom: 0
						left: 0) ];
		background: Color lightYellow darker;
		yourself.
	quitButton := SKBSmallButtonElement withText: 'Q U P T'.
	el addChild: quitButton.
	^ el