drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: Color lightBlue;
		path: self boundsInLocal;
		draw