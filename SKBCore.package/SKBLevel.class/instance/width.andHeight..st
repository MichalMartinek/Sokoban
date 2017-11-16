initialization
width: aWidth andHeight: aHeight
	width := aWidth.
	height := aHeight.
	map := Array new: aWidth * aHeight.
	1 to: (width * height) do: [ :i | map at: i put: SKBTile new. ]