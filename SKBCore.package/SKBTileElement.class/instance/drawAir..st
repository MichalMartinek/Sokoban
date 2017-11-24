drawing
drawAir: aCanvas
	aCanvas fill
		paint: Color lightBlue;
		path: self boundsInLocal;
		draw.
	aCanvas stroke
		path: (aCanvas shape ellipse: self boundsInLocal);
		paint: Color red;
		draw