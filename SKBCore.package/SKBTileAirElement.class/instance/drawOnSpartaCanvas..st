drawing
drawOnSpartaCanvas: aCanvas
	super drawOnSpartaCanvas: aCanvas.
	"if tile isCrateLocation"
		self drawTargetTextureOn: aCanvas .