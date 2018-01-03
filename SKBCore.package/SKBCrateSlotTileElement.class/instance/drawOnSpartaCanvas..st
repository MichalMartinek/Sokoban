drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: (Color fromString: '#c6be95' ) ;
		path: self boundsInLocal;
		draw.
		
	aCanvas stroke
		path: (aCanvas shape ellipse: ((20@20) corner: 60@60));
		paint: (Color fromString: '#b20000')  ;
		strokeOptions: (aCanvas  strokeOptions
			width: 5);
		draw