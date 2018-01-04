accessing
header
	| text textElement |
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
	textElement constraintsDo: [ :c | c horizontal fitContent ].^ ((BlElement new
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
				yourself) addChild: textElement)