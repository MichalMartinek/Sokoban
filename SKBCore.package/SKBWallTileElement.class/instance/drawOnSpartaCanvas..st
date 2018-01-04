drawing
drawOnSpartaCanvas: aCanvas
	| lineSpacing |
	aCanvas fill
		paint: Color brown;
		path: self boundsInLocal;
		draw.
	lineSpacing := self size / 5.
	0 to: self size by: lineSpacing do: [ :offset | 
		aCanvas stroke
			path: (aCanvas shape line: 0 @ offset to: self size @ offset);
			paint: Color gray;
			draw.
		self drawVerticalLinesOn: aCanvas yCord: offset ]