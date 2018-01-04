drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: (Color fromString: '#c6be95');
		path: self boundsInLocal;
		draw.
	aCanvas fill
		paint: (Color fromString: '#990033');
		path: (aCanvas shape ellipse: (0 @ (self size / 2) corner: (self size * 1) @ (self size * 2)));
		draw.
	aCanvas fill
		paint: (Color fromString: '#ffcc66');
		path:
			(aCanvas shape
				ellipse: ((self size / 5) @ (self size / 5) corner: (self size * 4 / 5) @ (self size * 4 / 5)));
		draw