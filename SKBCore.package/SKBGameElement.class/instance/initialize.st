initialization
initialize
	super initialize.
	self
		layout: BlFlowLayout new alignCenter;
		padding: (BlInsets all: 8);
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	eventLstnr := SKBQuitButtonEventListener new.
	self
		addChild:
			(SKBMainPageElement new
				quitEventListener: eventLstnr;
				gameElement: self)