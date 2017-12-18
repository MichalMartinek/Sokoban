initialization
initialize
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	playEventListener := SKBPlayButtonEventListener new.
	self addChild: self levelBox.
	self addChild: self footer