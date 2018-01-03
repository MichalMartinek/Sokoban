initialization
arrowDown
	| el arrow |
	el := BlElement new
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical exact: 50.
			c
				margin:
					(BlInsets
						top: 0
						right: 50
						bottom: 0
						left: 50) ];
		yourself.
	arrow := SKBArrowButtonElement new.
	arrow up: false.
	el addChild: arrow.
	^ el