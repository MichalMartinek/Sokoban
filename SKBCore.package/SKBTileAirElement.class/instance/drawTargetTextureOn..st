drawing
drawTargetTextureOn: aCanvas
	
	aCanvas stroke
		path: (aCanvas shape ellipse: self boundsInLocal );
		paint: Color red;
		draw.
	