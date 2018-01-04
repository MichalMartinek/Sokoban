initialization
footer
	| el button |
	el := BlElement new
		layout: BlFlowLayout new horizontal alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent.
			c
				margin:
					(BlInsets
						top: 0
						right: 0
						bottom: 10
						left: 0) ];
		yourself.
	button := SKBSmallButtonElement withText: 'M E N U'.
	button addEventHandler: menuEventListener.
	el addChild: button.
	^ el