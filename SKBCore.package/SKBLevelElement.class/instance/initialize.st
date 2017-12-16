initialization
initialize
	super initialize.
	count := 0.
	self background: (BlBackground paint: Color gray darker).
	self layout: (BlGridLayout horizontal cellSpacing: 0).
	self
		constraintsDo: [ :layoutConstraints | 
			layoutConstraints horizontal fitContent.
			layoutConstraints vertical fitContent ].