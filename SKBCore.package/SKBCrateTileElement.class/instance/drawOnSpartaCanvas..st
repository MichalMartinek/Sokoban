drawing
drawOnSpartaCanvas: aCanvas
	| offset |
	aCanvas fill
		paint: Color brown;
		path: self boundsInLocal;
		draw.
	offset := self height / 10.
	aCanvas stroke
		path: (aCanvas shape line: offset @ offset to: (self size * 9 / 10) @ (self size * 9 / 10));
		paint: Color lightGray;
		strokeOptions: (aCanvas strokeOptions width: 6);
		draw.
	aCanvas stroke
		path: (aCanvas shape line: (self height - offset) @ offset to: offset @ (self height - offset));
		paint: Color lightGray;
		strokeOptions: (aCanvas strokeOptions width: 6);
		draw.
	aCanvas stroke
		path: (offset @ offset extent: (self size * 0.775) @ (self size * 0.775));
		paint: Color lightGray;
		strokeOptions: (aCanvas strokeOptions width: 6);
		draw