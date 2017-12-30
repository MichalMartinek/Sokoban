drawing
drawOnSpartaCanvas: aCanvas
	| font textPainter metrics baseline origin color arrow |
	disabled
		ifTrue: [ color := Color gray ]
		ifFalse: [ color := Color darkGray ].
	up
		ifTrue: [ arrow := '▲' ]
		ifFalse: [ arrow := '▼' ].
	font := aCanvas font
		size: 35;
		weightBold;
		monospace;
		build.
	textPainter := aCanvas text
		font: font;
		paint: color;
		string: arrow .
	metrics := textPainter measure.
	origin := (self extent - metrics textMetrics bounds extent) / 2.0.
	baseline := origin - metrics textMetrics bounds origin.
	textPainter
		baseline: baseline;
		draw