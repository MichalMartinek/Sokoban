drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: (Color fromString: '#c6be95');
		path: self boundsInLocal;
		draw.
	aCanvas stroke
		path:
			(aCanvas shape
				ellipse: ((self size / 4) @ (self size / 4) corner: (self size * 3 / 4) @ (self size * 3 / 4)));
		paint: (Color fromString: '#b20000');
		strokeOptions: (aCanvas strokeOptions width: 5);
		draw