initialization
levelElement: aElement
	| el |
	el := BlElement new
		layout: BlFlowLayout new horizontal  alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical fitContent ];
		yourself.
	el addChild: aElement.
	^ el