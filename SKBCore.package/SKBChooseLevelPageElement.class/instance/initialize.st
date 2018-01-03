initialization
initialize
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	playEventListener := SKBLinkEventListener withPage: #LevelPage.
	self addChild: self arrowUp.
	self addChild: self levelBox.
	self addChild: self arrowDown.
	self addChild: self footer