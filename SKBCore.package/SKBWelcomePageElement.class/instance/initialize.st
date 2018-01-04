initialization
initialize
	| el |
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	playEventListener := SKBLinkEventListener withPage: #ChooseLevelPage.
	el := BlElement new
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical exact: 170.
			c
				margin:
					(BlInsets
						top: 100
						right: 0
						bottom: 0
						left: 0) ];
		background: Color lightYellow darker;
		yourself.
	el addChild: ((SKBButtonElement withText: 'P L A Y') addEventHandler: playEventListener).
	self addChild: self header.
	self addChild: el