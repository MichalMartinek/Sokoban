initialization
initialize
	super initialize.
	self
		layout: BlFlowLayout new alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	eventLstnr := SKBQuitButtonEventListener new.
	self changePage: #WelcomePage