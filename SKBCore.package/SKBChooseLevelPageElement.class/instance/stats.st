initialization
stats
	| container textElement text |
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
	text := BrRopedText string: 'Moves: -'.
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
	container addChild: textElement.
	^ container