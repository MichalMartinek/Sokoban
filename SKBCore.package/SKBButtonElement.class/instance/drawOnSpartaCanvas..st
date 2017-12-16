initialization
drawOnSpartaCanvas: aCanvas
	| roundedRectangle |
	roundedRectangle := aCanvas shape roundedRectangle: self boundsInLocal radii: (BlCornerRadii radius: 12).
	aCanvas clip by: roundedRectangle during: [ self drawButton: aCanvas ]