initialization
initialize
	super initialize.
	self
		geometry: (BlRectangle cornerRadius: 12);
		size: 150 @ 80;
		constraintsDo: [ :c | 
			c
				margin:
					(BlInsets
						top: 3
						right: 3
						bottom: 10
						left: 3) ].
	self addEventHandler: (SKBButtonEventListener new button: self)