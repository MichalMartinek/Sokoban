as yet unclassified
withWindow
	| space game |
	space := BlSpace new
		title: 'Sokoban'; extent: 800 @ 600;
		show.
	game := SKBGameElement new.
	game window: space.
	^ game