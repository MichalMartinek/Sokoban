initialization
initialize
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	nextEventListener := SKBLinkEventListener withPage: #ChooseLevelPage.
	self addChild: self levelBox