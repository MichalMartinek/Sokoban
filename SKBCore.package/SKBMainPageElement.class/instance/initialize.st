initialization
initialize
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	btn := SKBButtonElement withText: 'Q U I T'.
	self addChild: (SKBButtonElement withText: 'P L A Y').
	self addChild: (SKBButtonElement withText: 'S E T T I N G S').
	self addChild: btn