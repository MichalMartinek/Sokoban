initialization
arrowUp
	| el arrow |
	el := BlElement new
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical exact: 50.
			c
				margin:
					(BlInsets
						top: 5
						right: 50
						bottom: 0
						left: 50) ];
		yourself.
	arrow := SKBArrowButtonElement new.
	arrow disabled: true.
	arrow addEventHandler: (SKBArrowUpButtonEventListener new gameElement: gameElement).
	el addChild: arrow.
	^ el