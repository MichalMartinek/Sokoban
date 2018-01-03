initialization
stats
	| container textElement text text2 textElement2 |
	container := BlElement new
		layout: BlFlowLayout new horizontal alignCenter;
		constraintsDo: [ :c | 
			c horizontal exact: 200.
			c vertical exact: 100.
			c
				margin:
					(BlInsets
						top: 10
						right: 0
						bottom: 10
						left: 0) ];
		yourself.
	text := BrRopedText string: 'Moves: 40'.
	text
		attributes:
			{(BrTextForegroundAttribute paint: Color brown darker darker).
			BrFontEmphasisAttribute normal.
			(BrFontSizeAttribute size: 35)}
		from: 1
		to: text size.
	textElement := BlTextElement new.
	textElement text: text.
	textElement constraintsDo: [ :c | c horizontal fitContent ].
	text2 := BrRopedText string: 'Best: 42'.
	text2
		attributes:
			{(BrTextForegroundAttribute paint: Color brown darker darker).
			BrFontEmphasisAttribute normal.
			(BrFontSizeAttribute size: 35)}
		from: 1
		to: text2 size.
	textElement2 := BlTextElement new.
	textElement2 text: text2.
	textElement constraintsDo: [ :c | c horizontal fitContent ].
	container addChild: textElement.
	container addChild: textElement2.
	^ container