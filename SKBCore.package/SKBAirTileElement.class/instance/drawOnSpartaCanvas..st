drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: (Color fromString: '#c6be95' );
		path: self boundsInLocal;
		draw