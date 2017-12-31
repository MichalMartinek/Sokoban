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
	playEventListener := SKBPlayButtonEventListener new.
	menuEventListener := SKBWelcomeButtonEventListener new.
	self
		addChild: ((SKBButtonElement withText: 'B A C K') addEventHandler: playEventListener).
	self
		addChild: ((SKBButtonElement withText: 'M E N U') addEventHandler: menuEventListener).
	self addChild: btn