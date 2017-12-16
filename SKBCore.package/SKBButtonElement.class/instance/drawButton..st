initialization
drawButton: aCanvas
	| font textPainter metrics baseline origin |
	aCanvas fill
		paint: Color brown;
		path: self boundsInLocal;
		draw.
	font := aCanvas font
		size: 55;
		weightBold;
		monospace;
		build.
	textPainter := aCanvas text
		font: font;
		paint: Color white;
		string: text.
	metrics := textPainter measure.
	origin := (self extent - metrics textMetrics bounds extent) / 2.0.
	baseline := origin - metrics textMetrics bounds origin.
	textPainter
		baseline: baseline;
		draw