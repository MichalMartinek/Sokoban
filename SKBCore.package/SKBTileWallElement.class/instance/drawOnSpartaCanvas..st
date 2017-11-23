drawing
drawOnSpartaCanvas: aCanvas
	|lineSpacing|
	super drawOnSpartaCanvas: aCanvas.
	
	lineSpacing := 80  / 5.
	0 to: 80 by: lineSpacing do: 
		[ :offset |
			aCanvas stroke
				path: (aCanvas shape line: 0 @ offset to: 80@ offset);
				paint: Color gray;
				draw.
				self drawVerticalLinesOn: aCanvas  yCord: offset .
		  ]
	