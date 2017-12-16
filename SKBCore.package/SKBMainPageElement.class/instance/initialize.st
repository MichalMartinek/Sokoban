initialization
initialize
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	self addChild: (SKBButtonElement withText: 'P L A Y').
	self addChild: (SKBButtonElement withText: 'S E T T I N G S')