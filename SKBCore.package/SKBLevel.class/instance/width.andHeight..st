initialization
width: aWidth andHeight: aHeight
	width := aWidth.
	height := aHeight.
	map := Array new: width.
	1 to: width do: [ :x | map at: x put: (Array new: height). 1 to: height do: [ :y | (map at: x) at: y put: (SKBTile withType: #SKBWall withEntity: nil withPosition: x@y) ] ]