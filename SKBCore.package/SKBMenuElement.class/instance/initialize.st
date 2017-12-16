initialization
initialize
	| aText el |
	super initialize.
	self background: Color white;
layout: BlFrameLayout new;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	aText := BrRopedText string: 'Menu'.
	el := BlTextElement new
		text: aText;
		background: Color white.
	self addChild: el