drawing
drawCrate: aCanvas
	| offset |
	aCanvas fill
		paint: Color brown;
		path: self boundsInLocal;
		draw.
	offset := self height / 10.
	aCanvas stroke
		path: (aCanvas shape line: offset @ offset to: 72 @ 72);
		paint: Color lightGray;
		draw.
	aCanvas stroke
		path: (aCanvas shape line: (self height - offset) @ offset to: offset @ (self height - offset));
		paint: Color lightGray;
		draw.
	aCanvas stroke
		path: (offset @ offset extent: 62 @ 62);
		paint: Color lightGray;
		draw