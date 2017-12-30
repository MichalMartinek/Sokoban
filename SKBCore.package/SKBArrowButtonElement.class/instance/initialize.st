initialization
initialize
	super initialize.
	disabled := false.
	up := true.
	self
		geometry: (BlRectangle cornerRadius: 12);
		size: 50 @ 50.
	self addEventHandler: (SKBButtonEventListener new button: self)