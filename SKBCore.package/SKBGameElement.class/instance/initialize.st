initialization
initialize
	| aText el |
	super initialize.
	self background: Color white;
layout: (BlGridLayout horizontal cellSpacing: 20);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	aText := BrRopedText string: 'Sokoban'.
	el := BlTextElement new
		text: aText;
		background: Color paleYellow.
	self addChild: el