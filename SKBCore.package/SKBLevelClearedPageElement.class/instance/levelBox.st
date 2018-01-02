initialization
levelBox
	| text textElement inner outer |
	text := BrRopedText string: 'Level 0'.
	text
		attributes:
			{(BrTextForegroundAttribute paint: Color brown darker darker).
			BrFontWeightAttribute bold.
			BrFontEmphasisAttribute normal.
			(BrFontSizeAttribute size: 70)}
		from: 1
		to: text size.
	textElement := BlTextElement new.
	textElement text: text.
	textElement constraintsDo: [ :c | c horizontal fitContent ].
	
	inner := BlElement new
		layout: BlFlowLayout new vertical alignCenter;
		background: Color lightYellow darker;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical matchParent.
			c
				margin:
					(BlInsets
						top: 10
						right: 10
						bottom: 10
						left: 10) ];
		yourself.
	inner addChild: textElement.
	inner addChild: self stats.
	inner
		addChild: ((SKBButtonElement withText: 'N E X T') addEventHandler: nextEventListener).
	outer := BlElement new
		layout: BlFlowLayout new vertical alignCenter;
		background: Color brown;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical exact: 450.
			c
				margin:
					(BlInsets
						top: 20
						right: 50
						bottom: 20
						left: 50) ];
		yourself.
	outer addChild: inner.
	^ outer