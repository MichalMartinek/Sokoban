initialization
initialize
	| text textElement el |
	super initialize.
	self
		background: Color lightYellow;
		layout: BlFlowLayout new vertical alignCenter;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent ].
	playEventListener := SKBWelcomeButtonEventListener new.
	text := BrRopedText string: 'Sokoban'.
	text
		attributes:
			{(BrTextForegroundAttribute paint: Color brown darker darker).
			BrFontWeightAttribute bold.
			BrFontEmphasisAttribute normal.
			(BrFontSizeAttribute size: 120)}
		from: 1
		to: text size.
	textElement := BlTextElement new.
	textElement text: text.
	textElement constraintsDo: [ :c | c horizontal fitContent ].
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
	el
		addChild: ((SKBButtonElement withText: 'P L A Y') addEventHandler: playEventListener).
	self
		addChild:
			((BlElement new
				layout: BlFlowLayout new horizontal alignCenter;
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical fitContent.
					c
						margin:
							(BlInsets
								top: 100
								right: 0
								bottom: 0
								left: 0) ];
				yourself) addChild: textElement).
	self addChild: el